
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author MyPC
 *
 */
public class DBConnect {
	public Connection cn;
	public void KetNoi() throws Exception{
		DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
		 cn = DriverManager.getConnection(
				"jdbc:sqlserver://DESKTOP-MKDUO7U\\SQLEXPRESS;databaseName=Web;user=sa;password=12345");}
	public static void main(String[] args) throws Exception {
		DBConnect  c = new DBConnect();
		c.KetNoi();
		System.out.println("ok");
	}

}
