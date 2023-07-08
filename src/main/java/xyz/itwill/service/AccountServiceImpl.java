package xyz.itwill.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.AccountDAO;
import xyz.itwill.dto.Account;

@Service
@RequiredArgsConstructor
public class AccountServiceImpl implements AccountService {
	private final AccountDAO accountDAO;
	
	@Transactional
	@Override
	public void addAccount(Account account) {
		accountDAO.insertAccount(account);
	}
	@Transactional
	@Override
	public void modifyAccount(Account account) {
		accountDAO.updateAccount(account);
		
	}
	@Transactional
	@Override
	public void removeAccount(Integer acNo) {
		accountDAO.deleteAccount(acNo);
	}
	
	@Override
	public Account getAccount(Integer acNo) {
		return accountDAO.selectAccount(acNo);
	}

	@Override
	public List<Account> getAccountList() {
		return accountDAO.selectAccountList();
	}

}
