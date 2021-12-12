package com.bbs.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbs.service.BbsService;
import com.bbs.vo.Boarder;
import com.bbs.vo.Likey_R;
import com.bbs.vo.Reply;
import com.bbs.vo.UploadFile;

@Controller // 이 클래스가 Controller로 쓸 것이다 라고 지정.
@RequestMapping(value = "/bbs/*")
public class BbsController {

		// 전송방식이 POST인 방식은 검증을 굳이 할 필요없음.
	
		@Inject
		BbsService bbsService;
			
		
		// -- url 패턴이 'path/bbs/' 일 경우
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String bbs(Model model) throws Exception {
			
			return "redirect:/bbs";
		}
	
		
		// -- url 패턴이 'path/write' 일 경우
		@RequestMapping(value = "/write", method = RequestMethod.GET)
		public String write(RedirectAttributes ra, HttpSession session) throws Exception {
			// 로그인이 안되있으면 로그인 페이지로 이동 시키고 '로그인이 필요합니다' 알려줌
			if(session.getAttribute("user_id")==null)  {
				ra.addFlashAttribute("msg", "로그인이 필요합니다.");
				return "redirect:/login";
			}
			// 로그인 되있으면 글쓰기 페이지 출력
			return "bbs/write";
		}
		
		
		// -- url 패턴이 'path/bbs/view' 일 경우
		@RequestMapping(value = "/view", method = RequestMethod.GET)
		public String view(Integer boarder_id, Model model, RedirectAttributes ra) throws Exception {
			// int는 null값을 받을 수 없기 때문에 Integer 로 데이터타입을 바꿔줘야 한다.
			
			bbsService.addcount(boarder_id); // view가 호출되면 먼저 카운트 증가하고
			
			HashMap<String, Object> map = bbsService.view(boarder_id); // 증가 시킨 다음 후에 값을 다시 불러온다 -> 그래야 증가된 조회수로 보인다.
			
			// map 안에 boarder라는 값을 가진 것을 가져온다.
			if(map.get("boarder") == null) {
				
				// 존재하지 않는 게시물입니다. 메세지
				ra.addFlashAttribute	("msg", "존재하지 않는 게시물입니다.");
				//								("Attribute 이름", "Attribute 값")
				
				// bbs로 돌려보낸다.
				return "redirect:/bbs";	
			}
			// "boarder" 라는 이름으로 boarder 객체를 전달
			model.addAttribute("map", map); // 두 값을 따로 전달해도 되지만 굳이 그럴 필요가 없다.
			
			return "bbs/view";
		}
		
		
		// -- url 패턴이 'path/bbs/update' 일 경우
		@RequestMapping(value = "/update", method = RequestMethod.GET)
		public String update(Integer boarder_id, Model model, HttpSession session, RedirectAttributes ra) throws Exception {
			// int는 null값을 받을 수 없기 때문에 Integer 로 데이터타입을 바꿔줘야 한다.
			
			String user_id = (String) session.getAttribute("user_id");
			
			HashMap<String, Object> map = bbsService.view(boarder_id);
			Boarder boarder = (Boarder) map.get("boarder");
			
			// 로그인 검증
			if(user_id == null) {
				ra.addFlashAttribute	("msg", "로그인이 필요합니다.");
				return "redirect:/login"; 
			}
			
			// 게시물 존재 검증 
			if(boarder == null) {
				ra.addFlashAttribute	("msg", "존재하지 않는 게시물입니다.");
				return "redirect:/bbs";	
			}
			
			// 작성자 본인 검증
			if(!user_id.equals(boarder.getWriter())) {
				ra.addFlashAttribute ("msg", "권한이 없습니다.");
				return "redirect:/bbs";
			}
			
			
			model.addAttribute("map", map); // 두 값을 따로 전달해도 되지만 굳이 그럴 필요가 없다.
			
			return "bbs/update";
		}

		
		// -- url 패턴이 'path/bbs/writeAction' 일 경우
		@RequestMapping(value = "/writeAction", method = RequestMethod.POST)
		public String writeAction(Boarder boarder, MultipartFile file,HttpSession session, RedirectAttributes ra) throws Exception { // 받아 오는 값이 write에 name이랑 이름이 같아야 한다.
			
			String user_id = (String) session.getAttribute("user_id");
			
			if(user_id == null) {
				// redirect 사용시 request, model 사용 불가 그러므로 
				// RedirectAttributes 객체를 받아와 addFlashAttribute로 전송해야 한다.
				ra.addFlashAttribute("msg", "로그인이 필요합니다.");
				return "redirect:/login";
			}
			
			boarder.setWriter(user_id);
			bbsService.writeAction(boarder, file);
			
			return "redirect:/bbs";
		}
		
		
		// -- url 패턴이 'path/bbs/downloadAction' 일 경우
		@RequestMapping(value = "/downloadAction", method = RequestMethod.GET) 
		 public String downloadAction(UploadFile uploadFile, HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			bbsService.downloadAction(request, response, uploadFile);
			
			return "redirect:/bbs/view?boarder_id=" + uploadFile.getBoarder_id();
		}
		
		
		// -- url 패턴이 'path/bbs/updateAction' 일 경우
		@RequestMapping(value = "/updateAction", method = RequestMethod.POST)
		public String updateAction(Boarder boarder, MultipartFile file) throws Exception {
			
			bbsService.updateAction(boarder, file);
			
			return "redirect:/bbs/view?boarder_id=" + boarder.getBoarder_id();
		}
		
		
		// -- url 패턴이 'path/bbs/deleteAction' 일 경우
		@RequestMapping(value = "deleteAction", method = RequestMethod.GET)
		public String deleteAction(int boarder_id) throws Exception {
		
			bbsService.deleteAction(boarder_id);
			
			return "redirect:/bbs";
		}
		

		// -- url 패턴이 'path/bbs/likeyAction' 일 경우
		@RequestMapping(value = "likeyAction", method = RequestMethod.GET)
		@ResponseBody    			//	view에서 받아오는게 아닌 세션에서 받아온다.
		public String likeyAction(Likey_R likey_R, HttpSession session) throws Exception {

			likey_R.setUser_id((String)session.getAttribute("user_id"));
			
			if (likey_R.getUser_id() == null) return "-1";
			
			return bbsService.likeyAction(likey_R) + "";
		}
		
		// -- url 패턴이 'path/bbs/insertReply' 일 경우
		@RequestMapping(value = "insertReply", method = RequestMethod.GET)
		@ResponseBody
		public List<Reply> insertReply(Reply reply, HttpSession session) throws Exception {
			
			String user_id 	= (String) session.getAttribute("user_id");
			if(user_id == null) return null;
			
			reply.setWriter(user_id);
			List<Reply> list 	= bbsService.insertReply(reply);
			
			return list;
			
		}
		
		// -- url 패턴이 'path/bbs/deleteReply' 일 경우
		@RequestMapping(value = "deleteReply", method = RequestMethod.GET)
		@ResponseBody
		public List<Reply> deleteReply(Reply reply, HttpSession session) throws Exception {
			
			String user_id 	= (String) session.getAttribute("user_id");
			if(user_id == null) return null;
			
			reply.setWriter(user_id);
			List<Reply> list 	= bbsService.deleteReply(reply);
			
			return list;
			
		}
}