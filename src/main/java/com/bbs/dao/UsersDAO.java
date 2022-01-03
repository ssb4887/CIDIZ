package com.bbs.dao;

import java.util.List;

import com.bbs.bo.Comparison_product;
import com.bbs.bo.TotalOrderPrice;
import com.bbs.bo.UserBasket;
import com.bbs.vo.Authmail;
import com.bbs.vo.Basket;
import com.bbs.vo.Orders;
import com.bbs.vo.Users;

public interface UsersDAO {
		// 전달할땐 하나의 객체로만 전달이 가능하다. 두 개의 값이 필요하다면 하나의 객체로 만들어서 전달해야함.
	
		// select 문은 반환타입이 존재하고 = 반환하는 데이터타입
		// 그 외 insert, delete, update는 반환타입이 없다. = void
		// mapper에서 받아온 #{값} 과 아래 메서드에서 받아오는 (데이터 타입, "값")이 같아야 한다.
		public String		idCheck(String user_id) 					throws Exception;
		public Integer 	getAuthnum(String user_mail) 		throws Exception;
		public void 			setAuthnum(Authmail authmail) 	throws Exception;
		public void			resetAuthnum(Authmail authmail)	throws Exception;
		public void 			deleteAuthmail(String user_mail) 	throws Exception;
		public void			join(Users users) 								throws Exception;
		public Users		login(Users users)								throws Exception;	
		
		// 제품, 주문
		
		// 장바구니에 담은 리스트 전체 불러오기
		public List<UserBasket> getUserBasketList(String user_id) throws Exception;
		
		// 장바구니에 담은 수량과 금액 불러오기
		public List<TotalOrderPrice>  totalOrderPrice(String user_id) throws Exception;
		
		// 장바구니에 상품 정보 + 수량 담기
		public void addBasket(Basket basket) throws Exception;
		
		// 장바구니에 담은 상품 삭제(p_name AND user_id)
		public void deleteBasket(String user_id, String product_name) throws Exception;
		
		// 장바구니에 수량 추가 담기
		public void addCountBasket(Basket basket) throws Exception;
		
		// 장바구니에 있는 제품 검색
		public String searchProduct(String product_name) throws Exception;
		
		// 장바구니 항목 주문하기
		public void addOrder(Orders orders, String product_name) throws Exception;
		
		// 장바구니 항목으로 비교하기 테이블 만들기
		public List<Comparison_product> getComparison_product(String user_id) throws Exception;
}
