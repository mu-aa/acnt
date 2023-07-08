package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Account;
import xyz.itwill.mapper.AccountMapper;

@Repository
@RequiredArgsConstructor
public class AccountDAOImpl implements AccountDAO {
	private final SqlSession sqlSession;
	
	@Override
	public Integer insertAccount(Account account) {
		return sqlSession.getMapper(AccountMapper.class).insertAccount(account);
	}
	
	@Override
	public Integer updateAccount(Account account) {
		return sqlSession.getMapper(AccountMapper.class).updateAccount(account);
	}
	
	@Override
	public Integer deleteAccount(Integer acNo) {
		return sqlSession.getMapper(AccountMapper.class).deleteAccount(acNo);
	}
	
	@Override
	public Account selectAccount(Integer acNo) {
		return sqlSession.getMapper(AccountMapper.class).selectAccount(acNo);
	}
	
	@Override
	public List<Account> selectAccountList() {
		return sqlSession.getMapper(AccountMapper.class).selectAccountList();
	}
	
}
