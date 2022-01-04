package com.bbs.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbs.bo.Comparison_product;
import com.bbs.bo.UserBasket;
import com.bbs.service.BbsService;
import com.bbs.service.UsersService;
import com.bbs.vo.Authmail;
import com.bbs.vo.Basket;
import com.bbs.vo.Orders;
import com.bbs.vo.Users;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	// 숫자 콤마 찍기.	
	DecimalFormat formatter = new DecimalFormat("###,###");
	
	@Inject
	UsersService usersService;
	
	@Inject
	BbsService bbsService;
	
	//--- url 패턴이 'path/'일 경우
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		
		// 메세지를 띄울 수도 있다.
		// model.addAttribute("msg", "반갑습니다.");
		
		// 컨트롤러가 이 return 경로를 찾아간다.(확장자 제외)
		return "main/main";
		
		// 만약 폴더 안에 있으면 폴더명/파일 return하면 된다. --> main/main
	}
////////////////////////////////////////////////////////////////////////////////////////////////
	// 브랜드 스토리 찾아가기
		@RequestMapping(value = "/brand_story", method = RequestMethod.GET)
		public String brand_story(Model model) throws Exception {
			
			return "sub/brand_story";
		}

		// 이벤트 찾아가기
		@RequestMapping(value = "/event", method = RequestMethod.GET)
		public String event(Model model) throws Exception {

			return "sub/event";
		}


		// 뉴스 찾아가기
		@RequestMapping(value = "/news", method = RequestMethod.GET)
		public String news(Model model) throws Exception {
			
			return "sub/news";
		}

		// product 찾아가기
		@RequestMapping(value = "/product", method = RequestMethod.GET)
		public String product(Model model) throws Exception {
			
			return "sub/product";
		}


		// productMenu 찾아가기
		@RequestMapping(value = "/productMenu", method = RequestMethod.GET)
		public String productMenu(Model model) throws Exception {

			return "sub/productMenu";
		}



		// review 찾아가기
		@RequestMapping(value = "/review", method = RequestMethod.GET)
		public String review(Model model) throws Exception {
			
			return "sub/review";
			
		}


		// search_store 찾아가기
		@RequestMapping(value = "/search_store", method = RequestMethod.GET)
		public String search_store(Model model) throws Exception {
			
			return "sub/search_store";
			
		}


		// tip 찾아가기
		@RequestMapping(value = "/tip", method = RequestMethod.GET)
		public String tip(Model model) throws Exception {
			
			return "sub/tip";
			
		}
		
		
		// basket 찾아가기
		@RequestMapping(value = "/basket", method = RequestMethod.GET)
		public String basket(Model model, HttpSession session) throws Exception {

			String user_id = (String) session.getAttribute("user_id");
			
			List<UserBasket> ub_list = usersService.getUserBasketList(user_id);
			int sum = usersService.totalOrderPrice(user_id);
			
			model.addAttribute("ub_list", ub_list);
			model.addAttribute("totalOrderPrice", formatter.format(sum));
			return "sub/basket";
			
		}
		
		// basket 에 상품 추가
		@RequestMapping(value = "/addBasketAction", method = RequestMethod.POST)
		public String addBasketAction(Basket basket, HttpSession session, RedirectAttributes ra) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			String product= usersService.searchProductAction(basket.getProduct_name());
			
			if(user_id == null) {
				
				ra.addFlashAttribute("msg", "로그인 후 장바구니에 담아주세요.");
				return "redirect:/login";
				
			}
			
			if(user_id != null &&  product != null) {
				
				basket.setUser_id(user_id);
				usersService.addCountAction(basket);
				ra.addFlashAttribute("msg", "장바구니에 추가되었습니다.");
				return "redirect:/product";
				
			}
			
			basket.setUser_id(user_id);
			usersService.addBasketAction(basket);
			ra.addFlashAttribute("msg", "선택 상품을 장바구니에 담았습니다. 장바구니로 이동하시겠습니까?");
			return "redirect:/basket";
		}
		
		// basket 상품 지우기
		@RequestMapping(value = "/deleteBasketAction", method = RequestMethod.POST)
		@ResponseBody
		public List<UserBasket> deleteBasketAction(HttpSession session, @RequestParam(value="product_name[]") List<String> product_name) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			usersService.deleteBasketAction(user_id, product_name);
			
			List<UserBasket> ub_list = usersService.getUserBasketList(user_id);
			
			return ub_list;
		}
		
		
		// order 찾아가기
		@RequestMapping(value = "/order", method = RequestMethod.GET)
		public String order(Model model, HttpSession session) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			
			List<UserBasket> ub_list = usersService.getUserBasketList(user_id);
			int sum = usersService.totalOrderPrice(user_id);
			
			model.addAttribute("ub_list", ub_list);
			model.addAttribute("totalOrderPrice", formatter.format(sum));
			
			return "sub/order";
			
		}
		
		@RequestMapping(value = "/addOrderAction", method = RequestMethod.POST)
		public String addOrderAction(Orders orders, String addr1, String addr2, String addr3, HttpSession session,
				@RequestParam List<String> 	product_names, 
				@RequestParam List<String> 	colors, 
				@RequestParam List<Integer> product_counts, 
				@RequestParam List<Integer> order_prices) throws Exception {
			
				orders.setOrder_addr(addr1 + " " + addr2 + " " + addr3);
				String user_id = (String) session.getAttribute("user_id");
				
				for(int i = 0; i < product_names.size(); i++) {
					String 		pn 	= product_names.get(i);
					String		cl 		= colors.get(i);
					int 			pc 	= product_counts.get(i);
					int 			op	= order_prices.get(i);
					
					usersService.addOrderAction(new Orders(
							user_id,
							orders.getUser_name(),
							orders.getOrder_addr(),
							orders.getUser_phone(),
							orders.getUser_tel(),
							pn, 
							cl, 
							pc, 
							op,
							orders.getOrder_memo()
							)); 
				}
				
				return "redirect:/basket"; 
		}
		
		
		// completion 찾아가기
		@RequestMapping(value = "/completion", method = RequestMethod.GET)
		public String completion(Model model) throws Exception {
					
			return "sub/completion";
					
		}
		
		
		// comparison 찾아가기
		@RequestMapping(value = "/comparison", method = RequestMethod.GET)
		public String comparison(Model model, HttpSession session) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			List<Comparison_product> cp_list = usersService.getComparison_product(user_id);
			model.addAttribute("cp_list", cp_list);
			
			return "sub/comparison";
			
		}
	
	//////////////////////////////////////////////////////////////////////////////
	//--- url 패턴이 'path/join' 일 경우
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) throws Exception {
		
		return "main/join";
	}
	
	
	//--- url 패턴이 'path/login' 일 경우
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) throws Exception {
		
		return "main/login";
	}

	
	// --- url 패턴이 'path/bbs' 일 경우
		@RequestMapping(value = "/bbs", method = RequestMethod.GET)
		public String bbs(Integer pageNumber, Model model) throws Exception {
			
			if(pageNumber == null) pageNumber = 1;
			
			model.addAttribute("map", bbsService.bbs(pageNumber));
				
			return "bbs/bbs";
		}
		
	
	// --- url 패턴이 'path/joinAction' 일 경우
		@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
											// addr1,2,3는 받아올 공간(users에 변수를 안만들어서)이 없어서 이렇게 따로 가져와서 컨트롤러에서 완성시켜준다.
		public String joinAction(Users users, String addr1, String addr2, String addr3) throws Exception {
			
			users.setUser_addr(addr1 + " " + addr2 + " " + addr3);
			
			usersService.joinAction(users);
			
//						redirect:/ == http://localhost8081/
			return "redirect:/login"; // == http://localhost8081/login 이랑 같다.
		}
		
		
		// --- url 패턴이 'path/loginAction' 일 경우
		@RequestMapping(value = "loginAction", method = RequestMethod.POST)
		public String loginAction(Users users, HttpSession session, RedirectAttributes ra) throws Exception {
			
			int result = usersService.loginAction(users);
			String url = null;
			
			if(result == 0) {
				// 성공하면 세션 처리
				// 페이지 이동 -> localhost:8081/
				session.setAttribute("user_id", users.getUser_id());
				// return "redirect:/home";
				url = "redirect:/";
			}
			else {
				// 실패하면 메세지를 전달 (로그인 정보가 잘못됐습니다.)
				// 페이지 이동 -> localhost:8081/login
				ra.addFlashAttribute("msg", "로그인 정보가 일치하지 않습니다.");
				url = "redirect:/login";
			}
			
			return url;
		}
		
		
		// --- url 패턴이 'path/logout' 일 경우
		@RequestMapping(value="logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception {
			
			// 세션 지우기
			session.invalidate();
			
			return "redirect:/";
		}
		
		
	//--- url 패턴이 'path/idCheck' 일 경우
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	
	// 반환값을 페이지에 직접 출력해줌(무조건 문자열이 와야함)
	@ResponseBody
	public String idCheck(String user_id) throws Exception {
		
		int result = usersService.idCheck(user_id);
		
		// String str = Integer.toString(result); 대신
		// 정수형을 문자열로 바꿔서 반환 (대신 한칸 길어짐)
		return result + "";
	}
	
	
	//--- url 패턴이 'path/sendAuthMail' 일 경우
	@RequestMapping(value = "/sendAuthMail", method = RequestMethod.GET)
	@ResponseBody
	public String sendAuthMail(String user_mail) throws Exception {
		
		int result = usersService.setAuthnum(user_mail);
		
		return result + "";
	}
	
	
	// --- url 패턴이 'path/mailAuth' 일 경우
	@RequestMapping(value = "/mailAuth", method = RequestMethod.POST) 
	//└──> return에 파일경로 가 온다.(return에 0을 넣을 시 WEB-INF/views/main/0.jsp 를 찾을 수 없다.[이러면 GET으로 넘어감] [파일경로가 뜬다.])
	// 그래서 ResponseBody로 페이지로 넘겨줘야 한다. // ResponseBody : return값 자체의 페이지를 구성하겠다.
	@ResponseBody
	public String mailAuth(Authmail authmail) throws Exception {

		return usersService.checkAuthnum(authmail) + "";
	}
	
}

