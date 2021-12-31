package com.bbs.service;

import java.util.List;

import com.bbs.bo.TotalOrderPrice;
import com.bbs.bo.UserBasket;
import com.bbs.vo.Authmail;
import com.bbs.vo.Basket;
import com.bbs.vo.Users;

// service를 구성할 interface 표준 설계 작성
public interface UsersService {

	public int 		idCheck(String user_id)						throws Exception;
	public int 		setAuthnum(String user_mail) 			throws Exception;
	public int			checkAuthnum(Authmail authmail)		throws Exception;
	public void		joinAction(Users users)						throws Exception;
	public int 		loginAction(Users users)						throws Exception;
	// int의 반환 타입을 주는 경우는 0, 1 으로 성공, 실패를 구분해야 하기 때문에.
	
	// 장바구니, 제품, 주문 Service 
	public List<UserBasket> getUserBasketList(String user_id) throws Exception;
	public int totalOrderPrice(String user_id) throws Exception;
	public void addBasketAction(Basket basket) throws Exception;
	public void deleteBasketAction(Basket basket) throws Exception;
}
