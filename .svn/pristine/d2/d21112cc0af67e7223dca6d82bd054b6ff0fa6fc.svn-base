package member.service;

import java.util.Map;

import member.dao.IMemberDao;
import member.dao.MemberDao;
import member.vo.MemberVO;

public class MemberService implements IMemberService {

	private static IMemberService service;
	private IMemberDao dao;
	
	private MemberService() {
		dao = MemberDao.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(service == null) service = new MemberService();
		return service;
	}
	
	@Override
	public int joinMem(MemberVO mv) {
		int rs = dao.joinMem(mv);
		return rs;
	}

	@Override
	public String loginChk(Map<String, Object> map) {
		String memId = "";
		try {
			memId = dao.loginChk(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memId;
	}

	@Override
	public int modifyMember(MemberVO mv) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeMember(String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
