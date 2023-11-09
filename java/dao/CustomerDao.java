package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnection;
import model.Customer;
import model.ServiceMan;

public class CustomerDao {
			 public static void insertCustomer(Customer c) {
				 try {
					 Connection conn = DBConnection.createConnection();
					 String sql = "insert into customerregister(name,contact,address,email,password) values(?,?,?,?,?)";
						PreparedStatement pst = conn.prepareStatement(sql);
						pst.setString(1, c.getName());
						pst.setLong(2, c.getContact());
						pst.setString(3, c.getAddress());
						pst.setString(4, c.getEmail());
						pst.setString(5, c.getPassword());
						pst.executeUpdate();
						System.out.println("data inserted");
				} catch (Exception e) {
					e.printStackTrace();
				}
			 }
			 public static boolean checkEmail(String email) {
					boolean flag = false;
					
					try {
						Connection conn = DBConnection.createConnection();
						String sql = "select * from customerregister where email=?";
						PreparedStatement pst = conn.prepareStatement(sql);
						pst.setString(1, email);
						ResultSet rs = pst.executeQuery();
						if(rs.next()) {
							flag = true;
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return flag;
					
				}
			 public static Customer customerLogin(Customer c) {
					Customer c1 = null;
						
						try {
							Connection conn = DBConnection.createConnection();
							String sql = "select * from customerregister where email=? and password=?";
							PreparedStatement pst = conn.prepareStatement(sql);
							pst.setString(1, c.getEmail());
							pst.setString(2, c.getPassword());
							ResultSet rs = pst.executeQuery();
							if(rs.next()) {
								c1 = new Customer();
								c1.setId(rs.getInt("id"));
								c1.setName(rs.getString("name"));
								c1.setContact(rs.getLong("contact"));
								c1.setAddress(rs.getString("address"));
								c1.setEmail(rs.getString("email"));
								c1.setPassword(rs.getString("password"));
								
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					
					return c1;
					
				}
			 public static Customer getCustomerDetailsById(int id) {
					Customer c1 = null;
					try {
						Connection conn = DBConnection.createConnection();
						String sql="select * from customerregister where id=?";
						PreparedStatement pst = conn.prepareStatement(sql);
						pst.setInt(1, id);
						ResultSet rs = pst.executeQuery();
						while(rs.next()) {
							c1 = new Customer();
							c1.setName(rs.getString("name"));
							c1.setId(rs.getInt("id"));
							c1.setEmail(rs.getString("email"));
							
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					return c1;
					
				}

}
