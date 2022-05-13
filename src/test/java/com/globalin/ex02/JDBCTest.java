package com.globalin.ex02;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class JDBCTest {

		//이메소드는 테스트용
		@Test
		public void testConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:XE", "hanvit", "1234");
			
			assertNotNull(conn);
		} catch (ClassNotFoundException | SQLException e) {
			// fail메소드있는데 이거쓰면 무조건실패뜸 fail(e.getmessage());
			e.printStackTrace();
		}
			
		}
}
