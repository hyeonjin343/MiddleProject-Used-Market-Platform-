package member.dao;

import java.util.Map;

import member.vo.MemberVO;

public interface IMemberDao {
	
	public int joinMem(MemberVO mv);
	
	public String loginChk(Map<String, Object> map);
}
