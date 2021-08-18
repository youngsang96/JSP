package book;
import java.sql.*;
import util.DBConnection;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

public class BookService {
	
	public int bookInsert(HttpServletRequest request) {
		Connection con = DBConnection.getConnection();
		
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO book(writer, title, content) VALUES(?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("writer"));
			pstmt.setString(2, request.getParameter("title"));
			pstmt.setString(3, request.getParameter("content"));
			return pstmt.executeUpdate();
		
		}catch (SQLException e) {
			e.printStackTrace();
		
		}finally {
			DBConnection.close(con, pstmt, null);
		
		}
		return 0;
	}
	
	public List<Book> bookList(){
		Connection con = DBConnection.getConnection();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from book";
		List<Book> li = new ArrayList<Book>();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Book b = new Book(rs.getString("writer"),rs.getString("title"),rs.getString("content"));
				li.add(b);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		
		}finally {
			DBConnection.close(con, pstmt, rs);
		}
		return li;
	}
}
