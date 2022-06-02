package com.globalin.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.MemberVO;
import com.globalin.mapper.MemberMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
		
	private static Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Override
	public void register(MemberVO member) {
		log.info("regist..: " +member);
		mapper.insert(member);
			}

	@Override
	public MemberVO get(String id) {
		log.info("get..");
		return mapper.read(id);
	}

	@Override
	public boolean modify(MemberVO member) {
		log.info("modify..");
		return mapper.update(member)==1;
	}

	@Override
	public boolean remove(String id) {
		log.info("delete..");
		return mapper.delete(id)==1;
	}

	@Override
	public List<MemberVO> getList() {
		log.info("allmember.."); 
		return mapper.getList();
	}

	@Override
	public MemberVO findpw(String id, String name, String gender) {
		log.info("findpw..");
		return mapper.findpw(id, name, gender);
	}

	@Override
	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=3c29e5973236d66995354c01142b54eb"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:9090/controller/oauth&response_type=code"); // 본인이 설정한 주소
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	
	@Override
	public String getLoginAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=3c29e5973236d66995354c01142b54eb"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:9090/controller/kakaolog&response_type=code"); // 본인이 설정한 주소
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	
	

	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) {
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonElement id = ((JsonObject) element).get("id");
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String idd = id.getAsString();
			userInfo.put("nickname", nickname);
			userInfo.put("id", idd);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}

	
	@Override
	public HashMap<String, Object> getLoginUserInfo(String access_Token) {
		HashMap<String, Object> userInfo2 = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonElement id = ((JsonObject) element).get("id");
			String idd = id.getAsString();
			userInfo2.put("id", idd);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo2;
	}
	
	
	@Override
	public MemberVO login(String id, String pw) {
		log.info("login..");
		return mapper.login(id, pw);
	}
	
	@Override
	public MemberVO kakaologin(String id) {
		return mapper.kakaologin(id);
	}
}
