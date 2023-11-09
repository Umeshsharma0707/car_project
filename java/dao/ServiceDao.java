package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

import connection.DBConnection;
import model.Service;

public class ServiceDao {
	public static void insertSeller(Service ser) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into service(sm_id,stype,cmodel,sprice,duration) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, ser.getSm_id());
			pst.setString(2, ser.getStype());
			pst.setString(3, ser.getCmodel());
			pst.setInt(4, ser.getSprice());
			pst.setString(5, ser.getDuration());
			pst.executeUpdate();
			System.out.println("servce upload successfully");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static List<Service> getServiceById(int id) {

		List<Service> slist = new ArrayList<Service>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from service where sm_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Service s = new Service();
				s.setS_id(rs.getInt("s_id"));
				s.setSm_id(rs.getInt("sm_id"));
				s.setStype(rs.getString("stype"));
				s.setCmodel(rs.getString("cmodel"));
				s.setSprice(rs.getInt("sprice"));
				s.setDuration(rs.getString("duration"));
				slist.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return slist;

	}

	public static Service getSingleServiceById(int id) {
		Service ser = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from service where s_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				ser = new Service();
				ser.setS_id(rs.getInt("s_id"));
				ser.setSm_id(rs.getInt("sm_id"));
				ser.setStype(rs.getString("stype"));
				ser.setCmodel(rs.getString("cmodel"));
				ser.setSprice(rs.getInt("sprice"));
				ser.setDuration(rs.getString("duration"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ser;
	}

	public static void updateService(Service ser) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update service set stype=?,cmodel=?,sprice=?,duration=? where s_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ser.getStype());
			pst.setString(2, ser.getCmodel());
			pst.setInt(3, ser.getSprice());
			pst.setString(4, ser.getDuration());
			pst.setInt(5, ser.getS_id());
			pst.executeUpdate();
			System.out.println("servce updated ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void deleteService(int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from service where s_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("service deleted");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Service> getAllService() {

		List<Service> slist = new ArrayList<Service>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from service";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Service s = new Service();
				s.setS_id(rs.getInt("s_id"));
				s.setSm_id(rs.getInt("sm_id"));
				s.setStype(rs.getString("stype"));
				s.setCmodel(rs.getString("cmodel"));
				s.setSprice(rs.getInt("sprice"));
				s.setDuration(rs.getString("duration"));
				slist.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return slist;

	}

}
