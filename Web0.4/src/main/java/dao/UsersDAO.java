
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Users;

/**
 * @author MyPC
 *
 */
public class UsersDAO {
	// hÃ m kiá»ƒm tra tÃ i khaorn & email Ä‘Ã£ tá»“n táº¡i chÆ°a
	public boolean checkAccount(String userName, String email) {
		DBConnect cs = new DBConnect();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM taikhoan WHERE tentaikhoan=? or email=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, userName);
			cmd.setString(2, email);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				return true;
			}
			// Ä‘á»‘ng káº¿t ná»‘i
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;

	}

	// hÃ m KIá»‚M TRA khi ngÆ°á»�i dÃ¹ng/ admin Ä�Ä‚NG NHáº¬P
	public Users checkLogin(String un, String pass) {
		DBConnect cs = new DBConnect();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM taikhoan WHERE (tentaikhoan=? and matkhau=?)or(email=? and matkhau=?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, un);
			cmd.setString(2, pass);
			cmd.setString(3, un);
			cmd.setString(4, pass);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				
				Users user = new Users();
				user.setId(rs.getLong("id"));
				user.setTenTaiKhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getInt("uphone"));
			
				
				return user;
			}
			
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return null;
	}

	
	public boolean addAccount(Users user) throws Exception {
		DBConnect cs = new DBConnect();
		cs.KetNoi();
		String sql = "INSERT INTO taikhoan(tentaikhoan,email,matkhau,uphone) VALUES (?,?,?,?) ";
		try {
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, user.getTenTaiKhoan());
			cmd.setString(2, user.getEmail());
			cmd.setString(3, user.getMatKhau());
			// cmd.setString(4, user.getPhanQuyen());
			cmd.setInt(4, user.getPhone());
			
			cmd.executeUpdate();
			cs.cn.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	
	public boolean editAccount(Users user) {
		DBConnect cs = new DBConnect();
		try {
			try {
				cs.KetNoi();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String sql = "UPDATE taikhoan SET tentaikhoan = ? , matkhau = ? WHERE tentaikhoan = ? ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, user.getTenTaiKhoan());
			cmd.setString(2, user.getMatKhau());
			cmd.setString(3, user.getTenTaiKhoan());
			cmd.setInt(4, user.getPhone());
			cs.cn.close();
		
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean editDisplayNameAccount(String displayName, long id) throws Exception {
		DBConnect cs = new DBConnect();
		String sql = "UPDATE taikhoan SET tentaikhoan = ? WHERE id = ? ";
		try {
			cs.KetNoi();
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, displayName);
			cmd.setLong(2, id);
			cs.cn.close();
			cmd.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	
	public boolean editPasswordAccount(String matkhau, long id) throws Exception {
		DBConnect cs = new DBConnect();
		String sql = "update taikhoan set matkhau= ? where id=?;";
		try {
			cs.KetNoi();
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, matkhau);
			cmd.setLong(2, id);
			cmd.executeUpdate();
			cs.cn.close();
			cmd.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}


	public ArrayList<Users> getListUsers() {
		DBConnect cs = new DBConnect();
		ArrayList<Users> lst = new ArrayList<Users>();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM taikhoan";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				Users user = new Users();
				user.setId(rs.getLong("id"));
				user.setTenTaiKhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				
				user.setPhone(rs.getInt("uphone"));
				lst.add(user);
			}
			
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return lst;
	}

	
	public boolean deleteUser(long id) {
		DBConnect cs = new DBConnect();
		try {
			cs.KetNoi();
			String sql = "DELETE FROM taikhoan WHERE id = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, id);
			cmd.executeUpdate();
			cs.cn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	public Users getUsersById(long id) {
		DBConnect cs = new DBConnect();
		Users user = new Users();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM taikhoan where id=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, id);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				user.setId(rs.getLong("id"));
				user.setTenTaiKhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
		
				user.setPhone(rs.getInt("uphone"));
			}
			
			rs.close();
			cs.cn.close();
			return user;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	
	public Users getUsersByName(String name) {
		DBConnect cs = new DBConnect();
		Users user = new Users();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM taikhoan where tentaikhoan=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, name);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				user.setId(rs.getLong("id"));
				user.setTenTaiKhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				user.setPhanQuyen(rs.getString("phanquyen"));
				user.setPhone(rs.getInt("uphone"));
			}
			// Ä‘á»‘ng káº¿t ná»‘i
			rs.close();
			cs.cn.close();
			return user;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

//	
//	public boolean EditAvataAcount(Users user) {
//		DBConnect cs = new DBConnect();
//		// int kq = 0;
//		try {
//			try {
//				cs.KetNoi();
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			String sql = "UPDATE taikhoan SET hinhanh = ? WHERE tentaikhoan = ? ";
//			PreparedStatement cmd = cs.cn.prepareStatement(sql);
//			cmd.setString(1, user.getAnhChinh());
//			cmd.setString(2, user.getTenTaiKhoan());
//			cmd.executeUpdate();
//			cmd.close();
//			cs.cn.close();
//			return true;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return false;
//	}

}
