package com.sidiz.dao;

import java.util.List;

import com.sidiz.vo.Boarder;
import com.sidiz.vo.Likey_R;
import com.sidiz.vo.Reply;
import com.sidiz.vo.UploadFile;

public interface BbsDAO {
		
	public Boarder 		write(Boarder boarder) 						throws Exception;
	public void 				fileUpload(UploadFile uploadFile) 		throws Exception;
	public Boarder 		getBoarder(Integer boarder_id) 		throws Exception;
	public UploadFile 	getUploadFile(Integer boarder_id) 	throws Exception; // view작업 하는 곳에서 사용, view에서 boarder_id를 Integer로 받아 오기 때문에
	public UploadFile 	getUploadFile(String file_realName) 	throws Exception;
	public void 				updateBoarder(Boarder boarder)		throws Exception;
	public void				updateFile(UploadFile uploadFile)		throws Exception;
	public int					getMaxBoarder_id()								throws Exception;
	public List<Boarder> getBbsList(int boarder_id)				throws Exception;
	public void				deleteBoarder(int boarder_id)				throws Exception;
	public void				addDownloadCnt(int file_id)				throws Exception;
	public void				addBoarderCnt(int boarder_id)			throws Exception;
	public void				likeyUp(int boarder_id)						throws Exception;
	public void				likeyDown(int boarder_id)					throws Exception;
	public Likey_R		checkLikey(Likey_R likey_R)				throws Exception;
	public void				insertLikey(Likey_R likey_R)				throws Exception;
	public void				deleteLikey(Likey_R likey_R)				throws Exception;
	public List<Reply>	getReplyList(int boarder_id)				throws Exception;
	public void				insertReply(Reply reply)						throws Exception;
	public void				deleteReply(int reply_id)						throws Exception;
			
}
