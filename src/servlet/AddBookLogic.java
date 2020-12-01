package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import model.BookDAO;
import model.BookData;


public class AddBookLogic implements EnvSet {

//	public void init(ServletConfig config) throws ServletException {
//	//proxyの設定
//	System.setProperty("https.proxyHost", J701_HTTPS_PROXY_ADDRESS);
//	System.setProperty("https.proxyPort", J701_HTTPS_PROXY_PORT);
//}

	public String add(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// 戻り値のパス
		String forwardPass;
		// 入力されたISBNを取得
		request.setCharacterEncoding("utf-8");
		String isbn = request.getParameter("isbn");
		// GoogleBooksAPIで検索
		//接続URL
		String requestUrl = null;
		RequestDispatcher rd;
		//gooleへ接続するため
		URL url = null;
        HttpURLConnection con = null;

		//ISBNで検索
		requestUrl = GOOGLE_BOOKS_API_ISBN + isbn;

		//disp.jspへ渡すデータを格納
//    	request.setAttribute("key", "ISBN(" + isbn +")");

		//Google Books APIへの接続
		try{
			//URLConnectionの作成
			url = new URL(requestUrl);
			con = (HttpURLConnection)url.openConnection();
			con.setRequestMethod("GET");// GETリクエスト
			con.setReadTimeout(10000);	// 10秒
			con.setConnectTimeout(10000);// 10秒
		} catch (Exception e) {
			//例外発生時、error.jspへフォワードする
			request.setAttribute("error", e.toString());
			rd = request.getRequestDispatcher("/error.jsp");
			rd.forward(request, response);
			return null;
		}

		//レスポンスコードの確認
        int responseCode = con.getResponseCode();
        if(responseCode != HttpURLConnection.HTTP_OK){
        	//接続を切断する
        	con.disconnect();

        	//レスポンスコードが200以外の場合は、error.jspへフォワードする
        	request.setAttribute("error", "Google Books API　へのリクエストが失敗しました。レスポンスコード：" + responseCode);
        	rd = request.getRequestDispatcher("/error.jsp");
        	rd.forward(request, response);
        	return null;
        }


      //検索結果データ(レスポンス)の取得
        //ストリーム作成用
        BufferedReader responseReader = null;
        InputStreamReader isr = null;

        //レスポンス全データ取得用
        StringBuilder builder = new StringBuilder();

        //レスポンスを取得するためのストリームの作成
        isr =  new InputStreamReader(con.getInputStream());
        responseReader = new BufferedReader(isr);

        //レスポンスデータを1行取得する
        String line = responseReader.readLine();

        //nullになるまでデータを１行取り出し、builderへ追加する
        while (line != null){
        	builder.append(line);
        	line = responseReader.readLine();
        }

        //取得したデータを文字列へ変換する
        String responseString = builder.toString();

        //接続を切断する
        con.disconnect();

      //JSONオブジェクト作成用
        JSONObject jsonObject = null;

        try {
        	//取得した文字列からJSONオブジェクトを作成
        	jsonObject = new JSONObject(responseString);

        	//JSON配列itemsの取得
        	JSONArray jsonArray = jsonObject.getJSONArray("items");

        	//各検索結果
        	// 検索結果1件前提
        	JSONObject item = jsonArray.getJSONObject(0);

        	//volumeInfoに関するデータの取得
        	JSONObject volumeInfo = item.getJSONObject("volumeInfo");

        	//titleの取得
        	String title = volumeInfo.getString("title");

        	//authorsの取得
        	JSONArray author = null;
        	String firstAuthor = null;
        	try{
        		author = volumeInfo.getJSONArray("authors");
        		firstAuthor = author.getString(0);

        	}catch(JSONException e){
        	firstAuthor = "未登録";
        	}

        	//publishedDateの取得
    		String publishedDate = null;
    		try{
        		publishedDate = volumeInfo.getString("publishedDate");

    		}catch(JSONException e){
    			publishedDate = "未登録";
    		}

    		//publisherの取得
    		String publisher = null;
    		try{
        		publisher = volumeInfo.getString("publisher");

    		}catch(JSONException e){
    			publisher = "未登録";
    		}

    		//descriptionの取得
    		String description = null;
    		try{
    			description = volumeInfo.getString("description");

    		}catch(JSONException e){
    			description = "未登録";
    		}

    		// imageの取得
    		String imageLinks=null;
    		try{
//        		JSONArray arr=new JSONArray();
//                List<String> list = new ArrayList<>();
//
//                for(Object str : arr) {
////                    list.add;
//                }
//                JSONObject data=list.get(1);
//                imageLinks=data.getString("thumbnail");
//    			imageLinks = volumeInfo.getString("imageLinks");
    			JSONArray images=volumeInfo.getJSONArray("imageLinks");
    			JSONObject image=images.getJSONObject(1);
    			imageLinks=image.getString("thumbnail");

    		}catch(JSONException e){
    			// 画像なし
    			imageLinks = "未登録";
    		}

        	//purchaseDateの取得
    		Date date=new Date();
    		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd");
    		String purchaseDate=sdf.format(date);

    		//検索結果データの追加
    		BookData bookData=new BookData( title,  firstAuthor,  publishedDate,  publisher,  description,
    				isbn, imageLinks,  purchaseDate);
    		request.setAttribute("bookData",bookData);

    		// DAOに接続してinsert
    		BookDAO bookDAO=new BookDAO();
    		boolean isAdd=bookDAO.addBook(request);

    		if(isAdd) {
            	forwardPass= "/WEB-INF/jsp/success.jsp";
            	// リクエストパラメータに保存
//        		request.setAttribute("bookData",bookData);
    		}else {
    			System.out.println("insert失敗");
    			forwardPass="/WEB-INF/jsp/fail.jsp";
    		}

        }catch(Exception e){
        	e.printStackTrace();
        	forwardPass= "/WEB-INF/jsp/fail.jsp";
        }


//        //isbn_result.jspへフォワードする
//        rd = request.getRequestDispatcher("/result.jsp");
//        rd.forward(request, response);
        return forwardPass;


	}

	}



