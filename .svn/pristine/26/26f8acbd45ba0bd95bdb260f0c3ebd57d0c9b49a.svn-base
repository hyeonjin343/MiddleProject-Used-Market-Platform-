package member.dao;

import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import config.MybatisUtil;
import member.vo.MemberVO;

public class MemberDao implements IMemberDao {
	
	private static MemberDao dao;
	
	private MemberDao() {
		
	}
	
	public static IMemberDao getInstance() {
		if(dao == null) dao = new MemberDao();
		return dao;
	}

	@Override
	public int joinMem(MemberVO mv) {
		
		SqlSession session = MybatisUtil.getSqlseSession();
		
		int rs = 0;
		
		try {
			rs = session.insert("member.joinMem", mv);
			if(rs > 0) {
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return rs;
	}

	@Override
	public String loginChk(Map<String, Object> map) {
		SqlSession session = MybatisUtil.getSqlseSession();
		
		String memId = null;
		try {
			memId = session.selectOne("member.loginChk", map);
		} catch (PersistenceException e) {
			throw new RuntimeException("데이터 조회 중 예외 발생", e);
		} finally {
			session.close();
		}
		
		return memId;
	}
}
