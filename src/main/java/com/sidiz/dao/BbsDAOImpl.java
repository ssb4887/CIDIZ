package com.sidiz.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sidiz.vo.Boarder;
import com.sidiz.vo.Likey_R;
import com.sidiz.vo.Reply;
import com.sidiz.vo.UploadFile;

@Repository // 를 구현한 것이다 라는 어노테이션을 남김
public class BbsDAOImpl implements BbsDAO {
	
	@Inject
	SqlSession sqlSession;
	
	final String SESSION = "com.sidiz.mappers.bbs";

	@Override
	public Boarder write(Boarder boarder) throws Exception {
		sqlSession.insert(SESSION + ".write", boarder);
		return boarder;
	}

	@Override
	public void fileUpload(UploadFile uploadFile) throws Exception {
		sqlSession.insert(SESSION + ".fileUpload", uploadFile);
	}

	@Override
	public Boarder getBoarder(Integer boarder_id) throws Exception {
		return sqlSession.selectOne(SESSION + ".getBoarder", boarder_id);
		
	}

	@Override
	public UploadFile getUploadFile(Integer boarder_id) throws Exception {
		
		return sqlSession.selectOne(SESSION + ".getUploadFile", boarder_id);
	}

	@Override
	public UploadFile getUploadFile(String file_realName) throws Exception {
		
		return sqlSession.selectOne(SESSION + ".getUploadFileReal", file_realName);
	}

	@Override
	public void updateBoarder(Boarder boarder) throws Exception {
		
		sqlSession.update(SESSION + ".updateBoarder", boarder);
	}
	
	@Override
	public void updateFile(UploadFile uploadFile) throws Exception {
		
		sqlSession.update(SESSION+".updateFile", uploadFile);
	}

	@Override
	public int getMaxBoarder_id() throws Exception {
		
		return sqlSession.selectOne(SESSION + ".getMaxBoarder_id");
	}

	@Override
	public List<Boarder> getBbsList(int boarder_id) throws Exception {
		// 여러개의 값을 받아올때 List 사용.
		return sqlSession.selectList(SESSION + ".getBbsList", boarder_id);
	}

	@Override
	public void deleteBoarder(int boarder_id) throws Exception {
		sqlSession.update(SESSION + ".deleteBoarder", boarder_id);
	}

	@Override
	public void addDownloadCnt(int file_id) throws Exception {
		sqlSession.update(SESSION + ".addDownloadCnt", file_id);
	}

	@Override
	public void addBoarderCnt(int boarder_id) throws Exception {
		sqlSession.update(SESSION + ".addBoarderCnt", boarder_id);
	}

	@Override
	public void likeyUp(int boarder_id) throws Exception {
		sqlSession.update(SESSION + ".likeyUp", boarder_id);
	}

	@Override
	public void likeyDown(int boarder_id) throws Exception {
		sqlSession.update(SESSION + ".likeyDown", boarder_id);
	}

	@Override
	public Likey_R checkLikey(Likey_R likey_R) throws Exception {
		return sqlSession.selectOne(SESSION + ".checkLikey", likey_R);
	}

	@Override
	public void insertLikey(Likey_R likey_R) throws Exception {
		sqlSession.insert(SESSION + ".insertLikey", likey_R);
	}

	@Override
	public void deleteLikey(Likey_R likey_R) throws Exception {
		sqlSession.delete(SESSION + ".deleteLikey", likey_R);
	}

	@Override
	public void insertReply(Reply reply) throws Exception {
		sqlSession.insert(SESSION + ".insertReply", reply);
	}

	@Override
	public List<Reply> getReplyList(int boarder_id) throws Exception {
		return sqlSession.selectList(SESSION + ".getReplyList", boarder_id);
	}

	@Override
	public void deleteReply(int reply_id) throws Exception {
		sqlSession.delete(SESSION + ".deleteReply", reply_id);
	}
	
}
