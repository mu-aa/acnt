package xyz.itwill.service;
import java.util.List;

//
import xyz.itwill.dto.Member;
import xyz.itwill.exception.ExistsUserinfoException;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.MemberNotFoundException;
//
public interface MemberService {
	void addMember(Member member) throws ExistsUserinfoException;//삽입
	void modifyMember(Member member) throws MemberNotFoundException;//수정
	void zeroMember(String userid) throws MemberNotFoundException;//탈퇴관련
	void removeMember(String userid) throws MemberNotFoundException;//삭제
	Member getMember(String userid) throws MemberNotFoundException;//검색
	List<Member> getMemberList();
	Member loginAuth(Member member) throws LoginAuthFailException;
}