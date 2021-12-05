package com.bbs.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.bbs.vo.Boarder;
import com.bbs.vo.Likey_R;
import com.bbs.vo.Reply;
import com.bbs.vo.UploadFile;

public interface BbsService {

	public void writeAction(Boarder boarder, MultipartFile file) throws Exception;
	public HashMap	<String, Object> view(Integer boarder_id) throws Exception;
//	Map  -> arrayList -> 	List로 관리		(인덱스 번호로 관리)
//	HashMap -> 	Attribute로 관리 	(이름으로 관리, 이름과 값이 1:1 관계) 
// HashMap은 Map을 상속 받았다. // Map<String, Object> map = new HashMap<String, Object>(); 가능(다형성)
// HashMap은 key(name)과 value 공간만 존재
// HashMap은 제네릭으로 지정해줘야 한다. <key[데이터타입], name[데이터타입]>
// 다른 객체의 각각 하나의 데이터타입을 받아오고 싶으면 Object 데이터 타입으로 지정한다.(다형성)
	
	public void downloadAction(HttpServletRequest request, HttpServletResponse response, UploadFile uploadFile) throws Exception;
	public void updateAction(Boarder boarder, MultipartFile file) throws Exception;
	public HashMap<String, Object> bbs(int pageNumber) throws Exception;
	public void deleteAction(int boarder_id) throws Exception;
	public void addcount(int boarder_id) throws Exception;
	public int likeyAction(Likey_R likey_R) throws Exception;
	public List<Reply> insertReply(Reply reply) throws Exception;
	
}
