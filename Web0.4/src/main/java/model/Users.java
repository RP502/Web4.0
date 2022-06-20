
package model;

public class Users {
	private long id;
	
	private String tenTaiKhoan;
	private String matKhau;
	private String phanQuyen;
	private String email;
	private int phone;


	 
	public Users(long id,  String tenTaiKhoan, String matKhau, String phanQuyen,
			String email, int phone) {
	
		this.id = id;
		
		this.tenTaiKhoan = tenTaiKhoan;
		this.matKhau = matKhau;
		this.phanQuyen = phanQuyen;
		this.email = email;
		this.phone = phone;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	/**
	 * 
	 */
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}


	/**
	 * @return the tenTaiKhoan
	 */
	public String getTenTaiKhoan() {
		return tenTaiKhoan;
	}

	/**
	 * @param tenTaiKhoan
	 *            the tenTaiKhoan to set
	 */
	public void setTenTaiKhoan(String tenTaiKhoan) {
		this.tenTaiKhoan = tenTaiKhoan;
	}

	/**
	 * @return the matKhau
	 */
	public String getMatKhau() {
		return matKhau;
	}

	/**
	 * @param matKhau
	 *            the matKhau to set
	 */
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	/**
	 * @return the phanQuyen
	 */
	public String getPhanQuyen() {
		return phanQuyen;
	}

	/**
	 * @param phanQuyen
	 *            the phanQuyen to set
	 */
	public void setPhanQuyen(String phanQuyen) {
		this.phanQuyen = phanQuyen;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

}
