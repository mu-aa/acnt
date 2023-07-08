package xyz.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Account;
import xyz.itwill.service.AccountService;

@Controller
@RequiredArgsConstructor
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	private final AccountService accountService;

	@RequestMapping(value = "/popup/myAccount", method = RequestMethod.GET)
	public String account(Model model) {
		model.addAttribute("accountList", accountService.getAccountList());
		return "/popup/myAccount";
	}
	
	@ResponseBody
	@RequestMapping(value = "/popup/myAccount", method = RequestMethod.POST)
	public String addAccount(Model model, @ModelAttribute Account account) {
		System.out.println("test"+account.getAcNo());
		if(account.getAcName()==null) {
			account.setAcName("");
		}
		if(account.getAcNo()==null) {
			accountService.addAccount(account);	
		} else {
			accountService.modifyAccount(account);
		}
		if(account.getAcCard()==null) {
			account.setAcCard("");
		}
		if(account.getAcBalance()== null) {
			account.setAcBalance(0);
		}
		if(account.getAcMemo()==null) {
			account.setAcMemo("");
		}
		
		List<Account> accountList = accountService.getAccountList();
	    model.addAttribute("accountList", accountList);
	    model.addAttribute("newAccount", accountList.get(accountList.size() - 1));
		
		return "success";
	}
	
	@RequestMapping(value="/removeAccount", method=RequestMethod.POST)
	@ResponseBody
	public String removeAccount(HttpServletRequest request) {
	    String[] acNoList = request.getParameterValues("acNoList");

	    for(String acNo : acNoList) {
	        accountService.removeAccount(Integer.parseInt(acNo));
	    }

	    return "success";
	}

}

