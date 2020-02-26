package com.groophy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void createReplyTable(int gIndex) {
		String sql = "CREATE TABLE REPLY_" + gIndex
				+ "(rno INT AUTO_INCREMENT PRIMARY KEY, bno INT NOT NULL DEFAULT 0, replytext VARCHAR(1000) NOT NULL, replyer VARCHAR(50) NOT NULL,  regdate DATETIME NOT NULL DEFAULT NOW(), updatedate DATETIME NOT NULL DEFAULT NOW())";
		try {
			jdbcTemplate.execute(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	@Override
	public void deleteReplyTable(int gIndex) {
		String sql = "DROP TABLE REPLY_"+gIndex;
		try {
			jdbcTemplate.execute(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	@Override
	public void register(ReplyDTO dto) throws Exception {
		String tablename="reply_"+Integer.toString(dto.getgIndex());
		String sql="insert into "+tablename+" (bno,replytext,replyer) values (?,?,?)";
		try {
			jdbcTemplate.update(sql, new Object[] {dto.getBno(),dto.getReplytext(),dto.getReplyer()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void modify(ReplyDTO dto) throws Exception {
		String tablename="reply_"+Integer.toString(dto.getgIndex());
		String sql="update "+tablename+" set replytext=?,updatedate=now() where rno=?";
		try {
			jdbcTemplate.update(sql, new Object[] {dto.getReplytext(),dto.getRno()});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Map<String,Object> paramMap) throws Exception {
		String tablename="reply_"+paramMap.get("gIndex");
		String sql="delete from "+tablename+" where rno=?";
		try {
			jdbcTemplate.update(sql, new Object[] {paramMap.get("rno")});
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<ReplyDTO> listPage(BoardKeyDTO keydto) throws Exception {
		List<ReplyDTO> replyList=null;
		String tablename="reply_"+Integer.toString(keydto.getgIndex());
		int bno=keydto.getbIndex();
		int page=keydto.getPageStart();
		int pagesize=keydto.getPageSize();
		String sql="select * from "+tablename+" where bno=? order by rno desc limit ?,?";
		
		try {
			replyList=jdbcTemplate.query(sql,new Object[] {bno,page,pagesize},new ResultSetExtractor<List<ReplyDTO>>() {

				@Override
				public List<ReplyDTO> extractData(ResultSet rs) throws SQLException, DataAccessException {
					List<ReplyDTO> list = new ArrayList<ReplyDTO>();
					while(rs.next()) {
						ReplyDTO dto = new ReplyDTO();
						dto.setRno(rs.getInt("rno"));
						dto.setBno(rs.getInt("bno"));
						dto.setReplytext(rs.getString("replytext"));
						dto.setReplyer(rs.getString("replyer"));
						dto.setRegdate(rs.getDate("regdate"));
						dto.setUpdatedate(rs.getDate("updatedate"));
						
						list.add(dto);
					}
					return list;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return replyList;
	}

	@Override
	public int count(BoardKeyDTO keydto) throws Exception {
		int res=0;
		String tablename="reply_"+Integer.toString(keydto.getgIndex());
		String sql="select count(bno) from "+tablename+" where bno=?";
		try {
			res=jdbcTemplate.queryForObject(sql,new Object[] {keydto.getbIndex()}, int.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int getBno(Map<String,Object> paramMap) throws Exception {
		int res=0;
		String tablename="reply_"+paramMap.get("gIndex");
		String sql="select bno from "+tablename+" where rno=?";
		try {
			res=jdbcTemplate.queryForObject(sql,new Object[] {paramMap.get("rno")},int.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<GroupKeyDTO> listCity(String province) throws Exception {
		List<GroupKeyDTO> replyList=null;
		String sql="select * from post where province=?";
		try {
			replyList=jdbcTemplate.query(sql, new Object[] {province}, new ResultSetExtractor<List<GroupKeyDTO>>() {

				@Override
				public List<GroupKeyDTO> extractData(ResultSet rs) throws SQLException, DataAccessException {
					List<GroupKeyDTO> list = new ArrayList<GroupKeyDTO>();
					while(rs.next()) {
						GroupKeyDTO dto = new GroupKeyDTO();
						dto.setgProvince(rs.getString("province"));
						dto.setgCity(rs.getString("city"));
						
						list.add(dto);
					}
					return list;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return replyList;
	}

}
