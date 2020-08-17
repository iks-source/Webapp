package jdbc;
import java.sql.*;
public class add {
		private String phone;
		private String hospital;
		private String date;
		private String time;
		
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getHospital() {
			return hospital;
		}
		public void setHospital(String hospital) {
			this.hospital = hospital;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public String getTime() {
			return time;
		}
		public void setTime(String time) {
			this.time = time;
		}
		
		
		public boolean storeData() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=false&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","dbdb");
				String sql ="INSERT INTO appoint (Phone, Hospital, Date, Time ) VALUES (?,?,?,?)"; 
				PreparedStatement statement=con.prepareStatement(sql);
				statement.setString(1,getPhone());
				statement.setString(2,getHospital());
				statement.setString(3,getDate());
				statement.setString(4,getTime());
				statement.executeUpdate();
				statement.close();
				con.close();
				return true;
				
				
			}
			catch(Exception ex) {
				return false;
			}
		}
		
		public boolean updateData(int id) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=false&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","dbdb");
				String sql = "UPDATE appoint SET Phone =?, Hospital = ?, Date = ?, Time = ?  WHERE Phone=?";
				PreparedStatement statement = con.prepareStatement(sql);
				statement.setString(1,getPhone());
				statement.setString(2,getHospital());
				statement.setString(3,getDate());
				statement.setString(4,getTime());
				statement.setInt(5, id);
				statement.executeUpdate();
				statement.close();
				con.close();
				return true;
				
				
			}catch(Exception ex) {
				return false;
			}
		}
		
		public boolean deleteData(int id) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=false&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","dbdb");
				String sql = "DELETE From appoint WHERE Phone = ?";
				PreparedStatement statement = con.prepareStatement(sql);
				statement.setInt(1, id);
				statement.executeUpdate();
				statement.close();
				con.close();
				return true;
				
				
			}catch(Exception ex) {
				return false;
			}
		}
		
}
