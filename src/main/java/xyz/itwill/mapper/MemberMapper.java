package xyz.itwill.mapper;
//
import java.util.List;
import xyz.itwill.dto.Member;
//
public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	int zeroMember(String userid);//탈퇴관련
	int deleteMember(String member);
	Member selectMember(String userid);
	List<Member> selectMemberList();
}