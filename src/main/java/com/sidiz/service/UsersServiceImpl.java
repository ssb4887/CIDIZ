package com.sidiz.service;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.sidiz.bo.Comparison_product;
import com.sidiz.bo.TotalOrderPrice;
import com.sidiz.bo.UserBasket;
import com.sidiz.dao.UsersDAO;
import com.sidiz.util.Mail;
import com.sidiz.vo.Authmail;
import com.sidiz.vo.Basket;
import com.sidiz.vo.Orders;
import com.sidiz.vo.Users;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Inject
	UsersDAO dao;

	@Override
	public int idCheck(String user_id) throws Exception {

		int result = 0;

		if (dao.idCheck(user_id) != null)
			result = 1;

		return result;

	}

	@Override
	public int setAuthnum(String user_mail) throws Exception {

		int result = 0;
		
		Random rd = new Random();
		
		// 4자리의 임의의 인증번호 생성
		int auth_num = rd.nextInt(9999) + 1; // 1 ~ 9999 까지 랜덤 숫자가 나온다.

		String from 		= "1223020@donga.ac.kr"; 	// 보내는 곳
		String to 			= user_mail;		 					// 받는 곳
		String subject 	= "인증번호 메일";	 					// 메일의 제목
		String content 	= "다음 인증번호를 입력하세요. <br> <h2>" + auth_num + "</h2>"; // 메일의 내용

		// 해당 email 주소의 인증번호가 존재 하는지 확인
		Integer exist = dao.getAuthnum(to);
		
		// 
		if(exist == null)	dao.setAuthnum(new Authmail(to, auth_num));
							else 	dao.resetAuthnum(new Authmail(to, auth_num));
		
		
		Properties p = new Properties();
		// ↑ 환경설정

		// 메일전송을 하기위한 환경 설정이다.
		// ("mail.smtp에 대한 .값", 을 ooo 로 맞추겠다.);
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587"); // SMTP 프로토콜 : 간이우편 전송 프로토콜 -> 465port는 SMTP 암호화 전에 SMTP 암호화가 자동으로 시작.
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "587");
//		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // --> 465 port  사용시
		p.put("mail.smtp.socketFactory.fallback", "false");

		p.put("mail.smtp.ssl.trust", "smtp.gmail.com"); // 추가
		p.put("mail.smtp.ssl.protocols", "TLSv1.2"); // 추가

		/*
		 * 465 port 사용시 error erorr code : Could not connect to SMTP host:
		 * smtp.gmail.com, port: 465; 오류 └──> 포트 번호 587로 변경 후 .socketFactory.class 부분을 뺌.
		 * 
		 * erorr code : Could not convert socket to TLS; 오류 └──> ssl.trust 와
		 * ssl.protocols 를 추가함.
		 */

		// 데이터베이스 연동이랑 비슷하다.
		try {
			// 메일을 보내기 위해 접속, 설정
			Authenticator auth = new Mail();
			Session s = Session.getInstance(p, auth);
			s.setDebug(true);

			MimeMessage msg 	= new MimeMessage(s);

			// 보내는 사람, 받는 사람
			Address fromAddr 	= new InternetAddress(from);
			Address toAddr 		= new InternetAddress(to);

			// 내용을 입력해주는 구문.
			msg.setFrom(fromAddr);
			msg.setRecipient(Message.RecipientType.TO, toAddr);
			msg.setSubject(subject);
			msg.setContent(content, "text/html;charset=UTF-8");

			// 메일 보내기
			Transport.send(msg);

		} catch (Exception e) {
			e.printStackTrace();
			result = -1;
		}
		return result;
	}

	@Override
	public int checkAuthnum(Authmail authmail) throws Exception {
		
		int result = 1; // 실패
		
		Integer exist = dao.getAuthnum(authmail.getUser_mail());
		
		// 맞을 때
		// Integer랑 Int랑 비교시 == 보다 equals가 안정적이다.
		if(exist.equals(authmail.getAuth_num())) {
			dao.deleteAuthmail(authmail.getUser_mail());
			result = 0; // 성공
		}
		
		return result;
	}

	@Override
	public void joinAction(Users users) throws Exception {
		dao.join(users);
	}


	@Override
	public int loginAction(Users users) throws Exception {
		
		if(dao.login(users) == null) return 1;
		return 0;
	}

	@Override
	public List<UserBasket> getUserBasketList(String user_id) throws Exception {
		
		return dao.getUserBasketList(user_id);
	}

	@Override
	public int totalOrderPrice(String user_id) throws Exception {
		
		List<TotalOrderPrice> t_list = dao.totalOrderPrice(user_id);
		int sum = 0;
		
		if(t_list != null) {
			// 배열 타입 일떄 향상된 포문 사용
			// 하나씩 전부다 사용시
			for(TotalOrderPrice item: t_list)
				sum += item.getProduct_price() * item.getProduct_count();
				
		}
		
		return sum;
	}

	@Override
	public void addBasketAction(Basket basket) throws Exception {
		dao.addBasket(basket);
	}
	
	@Override
	public void addCountAction(Basket basket) throws Exception {
		dao.addCountBasket(basket);
	}
	
	@Override
	public String searchProductAction(String product_name) throws Exception {
		return dao.searchProduct(product_name);
	}

	@Override									//컨트롤러에서 넘어옴
	public void deleteBasketAction(String user_id, List<String> product_name) throws Exception {
		
		// dao 에 있는 product_name이 단수니까 List에 요소를 하나씩 꺼내서 넘겨준다.	
		for(String item: product_name)
			dao.deleteBasket(user_id, item);
	}

	@Override
	public void addOrderAction(Orders orders) throws Exception {
			dao.addOrder(orders);
			dao.deleteBasket(orders.getUser_id(), orders.getProduct_name());
	}

	@Override
	public List<Comparison_product> getComparison_product(String user_id) throws Exception {
		
		return dao.getComparison_product(user_id);
	}

}
