package member.service;

import java.util.Map;

import member.vo.MemberVO;

public interface IMemberService {
	
	/**
	 * 회원 가입
	 * @param mv 회원정보를 담은 객체
	 * @return 성공 1 실패 0
	 */
	public int joinMem(MemberVO mv);
	
	/**
	 * 로그인 id-pw 검증
	 * @param map
	 * @return
	 */
	public String loginChk(Map<String, Object> map);
	
	/**
	 * 회원 정보 수정
	 * @param mv 회원정보를 담은 객체
	 * @return 성공 1 실패 0
	 */
	public int modifyMember(MemberVO mv);
	
	/**
	 * 회원 정보 삭제
	 * @param mem_id 삭제할 mem_id
	 * @return 삭제 성공시 1 실패 0
	 */
	public int removeMember(String mem_id);
	
}
