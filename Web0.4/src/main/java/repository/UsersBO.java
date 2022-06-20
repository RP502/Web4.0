
package repository;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import dao.UsersDAO;
import model.Users;


public class UsersBO {
	// gá»�i láº¡i hÃ m DAO
	UsersDAO s = new UsersDAO();

	/*------------ PHÆ¯Æ NG THá»¨C CHO NGÆ¯á»œI DÃ™NG------------------*/

	// hÃ m KIá»‚M TRA khi ngÆ°á»�i dÃ¹ng/ admin Ä�Ä‚NG NHáº¬P
	public Users checkLogin(String un, String pass) {
		return s.checkLogin(un, pass);
	}

	// PhÆ°Æ¡ng thá»©c thÃªm má»™t tÃ i khoáº£n má»›i
	public boolean addAccount(Users user) throws Exception {
		return s.addAccount(user);
	}

	// hÃ m kiá»ƒm tra tÃ i khaorn & email Ä‘Ã£ tá»“n táº¡i chÆ°a
	public boolean checkAccount(String userName, String email) {
		return s.checkAccount(userName, email);
	}

	// PhÆ°Æ¡ng thá»©c cáº­p nháº­t thÃ´ng tin tÃ i khaonr cho ngÆ°á»�i dÃ¹ng/ giao diá»‡n
	// trangchá»§/cÃ¡ nhÃ¢n
	public boolean editAccount(Users user) {
		return s.editAccount(user);
	}

	/*------------ PHÆ¯Æ NG THá»¨C CHO ADMIN------------------*/

	// láº¥y ra toÃ n bÃ´ tÃ i khoáº£n giap diá»‡n quáº£n lÃ½
	public ArrayList<Users> getListUsers() {
		return s.getListUsers();
	}

	// xÃ³a tÃ i khoáº£n theo mÃ£ id
	public boolean deleteUser(long id) {
		return s.deleteUser(id);
	}

	// láº¥y ra toÃ n bÃ´ thÃ´ng tin cá»§a tÃ i khoáº£n theo id
	public Users getUsersById(long id) {
		return s.getUsersById(id);
	}

	// PhÆ°Æ¡ng thá»©c cáº­p nháº­t tÃªn hiá»ƒn thá»‹ cho ngÆ°á»�i dÃ¹ng/ giao diá»‡n trang chá»§/cÃ¡ nhÃ¢n
	public boolean editDisplayNameAccount(String displayName, long id) throws Exception {
		return s.editDisplayNameAccount(displayName, id);
	}

	// PhÆ°Æ¡ng thá»©c cáº­p nháº­t máº­t kháº©u cho ngÆ°á»�i dÃ¹ng/ giao diá»‡n trang chá»§/cÃ¡ nhÃ¢n
	public boolean editPasswordAccount(String matkhau, long id) throws Exception {
		return s.editPasswordAccount(matkhau, id);
	}
	
	// láº¥y ra toÃ n bÃ´ thÃ´ng tin cá»§a tÃ i khoáº£n theo name
	public Users getUsersByName(String name) {
		return s.getUsersByName(name);
	}
	
	// PhÆ°Æ¡ng thá»©c cáº­p nháº­t hÃ¬nh áº£nh cho tÃ i khoáº£n
//	public boolean EditAvataAcount(Users user) {
//		return s.EditAvataAcount(user);
//	}

	// Code mÃ£ hÃ³a máº­t kháº©u
	public String encryption(String str) {
		byte[] defaultBytes = str.getBytes();
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(defaultBytes);
			byte messageDigest[] = algorithm.digest();
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < messageDigest.length; i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			str = hexString + "";
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return str;
	}
}
