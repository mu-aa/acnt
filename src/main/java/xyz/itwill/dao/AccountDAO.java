package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Account;

public interface AccountDAO {
	Integer insertAccount(Account account);
	Integer updateAccount(Account account);
	Integer deleteAccount(Integer acNo);
	Account selectAccount(Integer acNo);
	List<Account> selectAccountList();
}
