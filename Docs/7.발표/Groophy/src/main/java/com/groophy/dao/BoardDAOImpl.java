package com.groophy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void register(BoardDTO dto) throws Exception {
		String tablename="board_"+Integer.toString(dto.getgIndex());
		String sql="insert into "+tablename+" (uId,bTitle,bContent) values (?,?,?)";
		try {
			jdbcTemplate.update(sql,new Object[] {dto.getuId(),dto.getbTitle(),dto.getbContent()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public BoardDTO read(BoardKeyDTO keydto) throws Exception {
		BoardDTO boardDTO=null;
		String tablename="board_"+Integer.toString(keydto.getgIndex());
		String sql="select * from "+tablename+"  where bIndex=?";
		try {
			boardDTO=jdbcTemplate.queryForObject(sql,new Object[] {keydto.getbIndex()},new RowMapper<BoardDTO>() {

				@Override
				public BoardDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					BoardDTO dto=new BoardDTO();
					SimpleDateFormat sformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					dto.setbIndex(rs.getInt("bIndex"));
					dto.setuId(rs.getString("uId"));
					dto.setbTitle(rs.getString("bTitle"));
					dto.setbContent(rs.getString("bContent"));
					dto.setbDate(sformat.format(rs.getTimestamp("bDate")));
					dto.setbViewcnt(rs.getInt("bViewcnt"));
					dto.setReplyCnt(rs.getInt("replyCnt"));
					return dto;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardDTO;
	}

	@Override
	public void modify(BoardDTO dto) throws Exception {
		String tablename="board_"+Integer.toString(dto.getgIndex());
		String sql="update "+tablename+" set bTitle=?,bContent=? where bIndex=?";
		try {
			jdbcTemplate.update(sql,new Object[] {dto.getbTitle(),dto.getbContent(),dto.getbIndex()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(BoardKeyDTO keydto) throws Exception {
		String tablename="board_"+Integer.toString(keydto.getgIndex());
		String sql="delete from "+tablename+" where bIndex=?";
		try {
			jdbcTemplate.update(sql,new Object[] {keydto.getbIndex()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception {
		List<BoardDTO> boardList=null;
		String sql=null;
		String keyfield=keydto.getKeyField();
		String keyword=keydto.getKeyWord();
		
		String tablename="board_"+Integer.toString(keydto.getgIndex());
		int page=keydto.getPageStart();
		int pagesize=keydto.getPageSize();
		
		if((keyfield.equals("t"))&&(keyword!=null)) {
			sql="select * from "+tablename+" where bTitle like '%"+keyword+"%' order by bIndex desc limit ?,?";
		}else if((keyfield.equals("c"))&&(keyword!=null)){
			sql="select * from "+tablename+" where bContent like '%"+keyword+"%' order by bIndex desc limit ?,?";
		}else if((keyfield.equals("w"))&&(keyword!=null)){
			sql="select * from "+tablename+" where uId like '%"+keyword+"%' order by bIndex desc limit ?,?";
		}else{
			sql="select * from "+tablename+" order by bIndex desc limit ?,?";
		}
		
		Object[] params= {page,pagesize};	
		
		try {
			boardList=jdbcTemplate.query(sql,params,new ResultSetExtractor<List<BoardDTO>>(){

				@Override
				public List<BoardDTO> extractData(ResultSet rs) throws SQLException, DataAccessException {
					List<BoardDTO> list=new ArrayList<BoardDTO>();
					while(rs.next()) {
						BoardDTO dto=new BoardDTO();
						SimpleDateFormat sformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						dto.setbIndex(rs.getInt("bIndex"));
						dto.setuId(rs.getString("uId"));
						dto.setbTitle(rs.getString("bTitle"));
						dto.setbContent(rs.getString("bContent"));
						dto.setbDate(sformat.format(rs.getTimestamp("bDate")));
						dto.setbViewcnt(rs.getInt("bViewcnt"));
						dto.setReplyCnt(rs.getInt("replyCnt"));
						
						list.add(dto);
					}
					return list;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardList;
	}

	@Override
	public int totalCount(BoardKeyDTO keydto) throws Exception {
		int res=0;
		String sql=null;
		String tablename="board_"+Integer.toString(keydto.getgIndex());
		String keyfield=keydto.getKeyField();
		String keyword=keydto.getKeyWord();
		
		if((keyfield.equals("t"))&&(keyword!=null)) {
			sql="select count(bIndex) from "+tablename+" where bTitle like '%"+keyword+"%' and bIndex > 0";
		}else if((keyfield.equals("c"))&&(keyword!=null)){
			sql="select count(bIndex) from "+tablename+" where bContent like '%"+keyword+"%' and bIndex > 0";
		}else if((keyfield.equals("w"))&&(keyword!=null)){
			sql="select count(bIndex) from "+tablename+" where uId like '%"+keyword+"%' and bIndex > 0";
		}else{
			sql="select count(bIndex) from "+tablename+" where bIndex > 0";
		}
		
		try {
			res=jdbcTemplate.queryForObject(sql, int.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public void updateReplyCnt(Map<String,Object> paramMap) throws Exception {
		String tablename="board_"+paramMap.get("gIndex");
		String sql="update "+tablename+" set replyCnt = replyCnt + ? where bIndex = ?";
		try {
			jdbcTemplate.update(sql, new Object[] {paramMap.get("amount"),paramMap.get("bno")});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateViewCnt(BoardKeyDTO keydto) throws Exception {
		String tablename="board_"+Integer.toString(keydto.getgIndex());
		String sql="update "+tablename+" set bViewcnt = bViewcnt + 1 where bIndex = ?";
		try {
			jdbcTemplate.update(sql, new Object[] {keydto.getbIndex()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void createBoardTable(int gIndex) {
		String sql = "CREATE TABLE BOARD_" + gIndex
				+ "(bIndex INT AUTO_INCREMENT PRIMARY KEY, uId VARCHAR(50) NOT NULL, bTitle VARCHAR(200) NOT NULL, bContent TEXT DEFAULT NULL, bDate DATETIME  NOT NULL DEFAULT NOW(), bViewcnt INT DEFAULT 0, replyCnt INT DEFAULT 0, bFile VARCHAR(100) DEFAULT NULL)";
		try {
			jdbcTemplate.execute(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteBoardTable(int gIndex) {
		String sql="DROP TABLE BOARD_"+gIndex;
		try {
			jdbcTemplate.execute(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
