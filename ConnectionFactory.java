package com.hefshine.services;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	public Connection getOracleConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver Loaded successfully");
			String dbURL = "jdbc:oracle:thin:@localhost:1521/XE";
			String dbUserName = "DIKU";
			String dbPassword = "root";
			conn = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
			System.out.println("CONNECTED SUCCESSFULLY........");

		} catch (Exception e) {
			System.out.println("UNABLE TO CONNECT.......");
			e.printStackTrace();
		}
		return conn;
	}
}
