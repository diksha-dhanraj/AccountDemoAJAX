package com.hefshine.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {
	public Account getAccountInfo(int accNo) {
		Account account = null;
		Connection conn = null;
		try {
			conn = new ConnectionFactory().getOracleConnection();

			String query = "select * from Account where acc_no=" + accNo;
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {

				int acc_no = rs.getInt(1);
				String name = rs.getString(2);
				int balance = rs.getInt(3);

				account = new Account(acc_no, name, balance);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
		}
		return account;
	}
}
