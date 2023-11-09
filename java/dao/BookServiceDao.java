package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.BookService;

public class BookServiceDao {
		public static void bookService(BookService b) {
			try {
				Connection conn = DBConnection.createConnection();
				String sql = "insert into bookservice(c_id,s_id,sm_id,service_status,payment_status)values(?,?,?,?,?)";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, b.getC_id());
				pst.setInt(2, b.getS_id());
				pst.setInt(3, b.getSm_id());
				pst.setString(4,b.getService_status());
				pst.setString(5,b.getPayment_status());
				pst.executeUpdate();
				System.out.println("book request done");
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		public static List<BookService> getPendingServiceList(int id){
			List<BookService> list = new ArrayList<BookService>();
			try {
				Connection conn = DBConnection.createConnection();
				String sql = "select * from bookservice where c_id=? and service_status='pending'";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, id);
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					BookService b = new BookService();
					b.setB_id(rs.getInt("b_id"));
					b.setS_id(rs.getInt("s_id"));
					b.setC_id(rs.getInt("c_id"));
					b.setSm_id(rs.getInt("sm_id"));
					b.setService_status(rs.getString("service_status"));
					b.setPayment_status(rs.getString("payment_status"));
					list.add(b);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		public static List<BookService> getSellerPendingServiceList(int id){
			List<BookService> list = new ArrayList<BookService>();
			try {
				Connection conn = DBConnection.createConnection();
				String sql = "select * from bookservice where sm_id=? and service_status='pending'";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, id);
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					BookService b = new BookService();
					b.setB_id(rs.getInt("b_id"));
					b.setS_id(rs.getInt("s_id"));
					b.setC_id(rs.getInt("c_id"));
					b.setSm_id(rs.getInt("sm_id"));
					b.setService_status(rs.getString("service_status"));
					b.setPayment_status(rs.getString("payment_status"));
					list.add(b);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
}
