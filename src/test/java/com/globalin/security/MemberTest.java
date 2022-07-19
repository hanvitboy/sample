package com.globalin.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"
	
})
public class MemberTest {
	//member 를 만들어서 테이블에 삽입
	
	//member 를 만들때 패스워드 암호화 필요
	@Autowired
	private PasswordEncoder encoder;
	
	//db 연결 객체 필요
	@Autowired
	private DataSource ds;
	
	@Test
	public void testInsertAuth() {
		
		String sql= "insert into tbl_member_auth(userid, auth)"
					+"values(?,?)";
		
		for(int i=0; i<100; i++) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn=ds.getConnection();
				pstmt = conn.prepareStatement(sql);
	
				if(i<80) {
					//번호가 80미만은 일반사용자
					pstmt.setString(1, "user"+i);
					pstmt.setString(2, "ROLE_USER");
					
				}else if(i<90) {
					//번호가 80~89면 운영자
					pstmt.setString(1, "manager"+i);
					pstmt.setString(2, "ROLE_MEMBER");
					
				}else {
					pstmt.setString(1, "admin"+i);
					pstmt.setString(2, "ROLE_ADMIN");
					
				}
				pstmt.executeUpdate();
				
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt !=null)
					pstmt.close();
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}//end for문

	}//end text
		
	
	
//	@Test
//	public void testInsertMember() {
//		
//		String sql = "insert into tbl_member(userid, userpw, username)"
//					+"values (?,?,?)";
//	
//		for(int i=0; i<100; i++) {
//			Connection conn = null;
//			PreparedStatement pstmt = null;
//	
//		
//			try {
//				conn=ds.getConnection();
//				pstmt = conn.prepareStatement(sql);
//				
//				//비밀번호 설정 user0의 비밀번호는 pw0
//				//user1 : pw1...
//				pstmt.setString(2, encoder.encode("pw" + i));
//				
//				//일반 사용자 80명
//				if(i<80) {
//					//id 정하는것
//					pstmt.setString(1, "user"+i);
//					
//					//user이름 정하기
//					pstmt.setString(3, "일반사용자"+i);
//				}else if(i<90) {
//					//운영자 10명필요
//					pstmt.setString(1, "manager"+i);
//					pstmt.setString(3, "운영자"+i);
//					
//				}else {
//					//관리자 10명
//					pstmt.setString(1, "admin"+i);
//					pstmt.setString(3, "관리자"+i);
//				}
//				pstmt.executeUpdate();
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}finally {
//				try {
//					if(pstmt !=null)
//						pstmt.close();
//					if(conn != null)
//						conn.close();
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}
//				
//			}
//		}//end for문
//	
//	}//end test
}