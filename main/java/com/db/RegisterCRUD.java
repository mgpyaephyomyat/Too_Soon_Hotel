package com.db;
import java.sql.*;
import java.util.ArrayList;

import com.model.*;

public class RegisterCRUD {
	public void insertRegistrationData(Register r) throws ClassNotFoundException, SQLException {
		DBManager dbm = new DBManager();
		dbm.connector();
		String sql="INSERT INTO `hotel_servlet`.`hotel_servlet`\r\n"
				+ "(`name`,\r\n"
				+ "`email`,\r\n"
				+ "`time`)\r\n"
				+ "VALUES\r\n"
				+ "(?,?,?);";
		PreparedStatement ps = dbm.connector().prepareCall(sql);
		ps.setString(1, r.getName());
		ps.setString(2, r.getEmail());
		ps.setString(3, r.getCourses());
		
		ps.executeUpdate();
		dbm.connector().close();
		 System.out.println("data is Insert  successfully");   
	}

public ArrayList<Register> selectall() throws ClassNotFoundException, SQLException{
	ArrayList<Register> rList = new ArrayList<Register>();
	Register r;
	DBManager dbm = new DBManager();
	dbm.connector();
	String sql = "SELECT `hotel_servlet`.`id`,\r\n"
			+ "    `hotel_servlet`.`name`,\r\n"
			+ "    `hotel_servlet`.`email`,\r\n"
			+ "    `hotel_servlet`.`time`\r\n"
			+ "FROM `hotel_servlet`.`hotel_servlet`;";
	PreparedStatement ps = dbm.connector().prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		r = new Register(rs.getInt("id"),
				rs.getString("name"),
				rs.getString("email"),
				rs.getString("time"));
		rList.add(r);
	}
	dbm.connector().close();
	return rList;
}
public void update(Register r) throws ClassNotFoundException, SQLException {
	DBManager dbm = new DBManager();
	dbm.connector();
	String sql = "UPDATE `hotel_servlet`.`hotel_servlet`\r\n"
			+ "SET `name` = ? ,\r\n"
			+ "`email` = ? ,\r\n"
			+ "`time` = ? \r\n"
			+ "WHERE `id` = ? ;";
	PreparedStatement ps = dbm.connector().prepareStatement(sql);
	
	ps.setString(1, r.getName());
	ps.setString(2, r.getEmail());
	ps.setString(3, r.getCourses());
	ps.setInt(4, r.getId());
	
	ps.executeUpdate();	
	dbm.connector().close();
}

public void delete(int id) throws ClassNotFoundException, SQLException {
	DBManager dbm = new DBManager();
	dbm.connector();
	String sql = "DELETE FROM `hotel_servlet`.`hotel_servlet`"
			+ "	WHERE `id`=?;";
	

	PreparedStatement ps = dbm.connector().prepareStatement(sql);
	ps.setInt(1,id);
	ps.executeUpdate();
}
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	RegisterCRUD rdc= new RegisterCRUD();
	ArrayList<Register> rList = rdc.selectall();
	for(Register data:rList) {
		System.out.println("id: "+data.getId());
		System.out.println("name: "+data.getName());
		System.out.println("email: "+data.getEmail());
		System.out.println("course: "+data.getCourses());
	}
}
}
