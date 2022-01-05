package com.sidiz.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sidiz.dao.BbsDAO;
import com.sidiz.util.FileUpload;
import com.sidiz.vo.Boarder;
import com.sidiz.vo.Likey_R;
import com.sidiz.vo.Paging;
import com.sidiz.vo.Reply;
import com.sidiz.vo.UploadFile;

@Service
public class BbsServiceImpl implements BbsService {

	@Inject
	BbsDAO dao;
	// data access object
	// 데이터 베이스 접속, 검색, 결과 반환을 하는 역할.
	
	// 파일 업로드시 저장될 경로지정
	static final String PATH = "C:\\spring\\Spring_project\\src\\main\\webapp\\resources\\upload\\";
	
	@Override
	public void writeAction(Boarder boarder, MultipartFile file) throws Exception {
		
		//-- 게시글 작성 기능
		boarder = dao.write(boarder);
		
		//-- 파일 업로드 기능
		// 파일 객체가 비었을 때 (파일 입력하지 않았을 때)
		if(file.isEmpty()) return;
		
		dao.fileUpload(FileUpload.upload(boarder, file, PATH));
	}
	
	// 모든 메서드의 반환값은 하나의 값만 해줘야 한다.
	@Override
	public HashMap<String, Object> view(Integer boarder_id) throws Exception {
		
		Boarder 		boarder			= dao.getBoarder(boarder_id);
		UploadFile	uploadFile		= dao.getUploadFile(boarder_id);
		List<Reply>	replyList 		= dao.getReplyList(boarder_id);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("boarder", boarder);
		map.put("uploadFile", uploadFile);
		map.put("replyList", replyList);
		// .put() : HashMap에 값을 추가 ("key", value)
		
		return map;
	}

	@Override
	public void downloadAction(HttpServletRequest request, HttpServletResponse response, UploadFile uploadFile) throws Exception {
		
		// 
		uploadFile = dao.getUploadFile(uploadFile.getFile_realName());
		
		String browser = request.getHeader("User-Agent");
		
		// 파일의 인코딩 설정
		if(browser.contains("MSIE") || browser.contains("Trident") || browser.contains("Chrome")) {
			uploadFile.setFile_realName(URLEncoder.encode(uploadFile.getFile_realName(), "UTF-8").replaceAll("\\+", "%20"));
			uploadFile.setFile_name(URLEncoder.encode(uploadFile.getFile_name(), "UTF-8").replaceAll("\\+", "%20"));
		}
		else {
			uploadFile.setFile_realName(new String(uploadFile.getFile_realName().getBytes("UTF-8"), "ISO-8859-1"));
			uploadFile.setFile_name(new String(uploadFile.getFile_name().getBytes("UTF-8"), "ISO-8859-1"));
		}
		
		String file_name = PATH + uploadFile.getFile_realName();
		if (!new File(file_name).exists()) return;
		
		response.setContentType("application/octer-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Content-Disposition", "attachment; filename = \"" + uploadFile.getFile_name() + "\"");
		
		OutputStream 		os = response.getOutputStream();	// 프로그램에서 output에 대한 통로를 만들어줌(response 객체에서 가져옴) {응답}
		FileInputStream 	fis = new FileInputStream(file_name); // Server 에서 프로그램으로 file을 input할 통로를 만들어줌 {파일경로}
		
		int 		ncount	= 0;
		byte[] 	bytes 	= new byte[512];
		
		// 파일을 512 byte로 한 조각씩 나눠서 보냄.
		
		// 보낼 파일 조각이 없으면 -1 이 반환 
		while((ncount = fis.read(bytes)) != -1) {
			os.write(bytes, 0, ncount);
		}
		
		fis.close();
		os.close();
		
		// 다운로드 횟수를 증가 시켜주는 기능 수행
		dao.addDownloadCnt(uploadFile.getFile_id());
	}

	@Override
	public void updateAction(Boarder boarder, MultipartFile file) throws Exception {
		
		// 게시물 수정 기능
		dao.updateBoarder(boarder);
		
		
		// 파일 수정 기능
		// 파일 객체가 비었을 때 (파일 입력하지 않았을 때)
		if(file.isEmpty()) return;
		
		
		// uploadFile을 데이터베이스에서 불러옴
		// 만약 null 이면 원본이 존재 X
		// null이 아니면 원본이 존재 O
		UploadFile uploadFile = dao.getUploadFile(boarder.getBoarder_id());		
		
		// 게시물에 파일이 존재하지 않는다면
		if(uploadFile == null) {
			// 새로운 파일을 insert 시켜줌
			dao.fileUpload(FileUpload.upload(boarder, file, PATH));
		}
		else {// 						2																1						   3
			// (해당 경로에 있는 원본을 실제 이름을 가지고 찾아가) File 객체로 불러와서 (삭제를 해준다.)
			new File(PATH + uploadFile.getFile_realName()).delete();
			// 파일을 Update 시켜줌
			dao.updateFile(FileUpload.upload(boarder, file, PATH));
		}
		
	}

	@Override
	public HashMap<String, Object> bbs(int pageNumber) throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		// dao는 데이터베이스에 접근 -> 검색 -> 결과 반환을 해주는 역할인데 여러번 호출시 성능이 떨어진다.
		// 그래서 단 한번만 데이터베이스에 접근할 수 있도록 변수로 담아준다.
		int max = dao.getMaxBoarder_id();
		
		// 페이징 처리 연산
		List<Boarder> list = dao.getBbsList(max - (pageNumber - 1) * 10);
		Paging paging = new Paging(pageNumber, max); //
		
		map.put("list", list);
		map.put("paging", paging);
		
		return map;
	}

	@Override
	public void deleteAction(int boarder_id) throws Exception {
		dao.deleteBoarder(boarder_id); // 호출만 해주면 된다.
	}

	@Override
	public void addcount(int boarder_id) throws Exception {
		dao.addBoarderCnt(boarder_id);
	}

	@Override
	public int likeyAction(Likey_R likey_R) throws Exception {
		
		Likey_R exist = dao.checkLikey(likey_R);
		
		if(exist == null) {
			dao.likeyUp(likey_R.getBoarder_id());
			dao.insertLikey(likey_R);
		}
		else {
			dao.likeyDown(likey_R.getBoarder_id());
			dao.deleteLikey(likey_R);
		}
		
		Boarder boarder = dao.getBoarder(likey_R.getBoarder_id());
		
		return boarder.getLikey();
	}

	@Override
	public List<Reply> insertReply(Reply reply) throws Exception {
		
		dao.insertReply(reply);
		
		return dao.getReplyList(reply.getBoarder_id());
	}

	@Override
	public List<Reply> deleteReply(Reply reply) throws Exception {
		
		dao.deleteReply(reply.getReply_id());
		
		return dao.getReplyList(reply.getBoarder_id());
	}
	
}
