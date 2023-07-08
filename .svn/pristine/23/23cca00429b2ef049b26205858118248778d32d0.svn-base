package xyz.itwill.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Income;
import xyz.itwill.dto.Member;
import xyz.itwill.service.ExpensesService;
import xyz.itwill.service.IncomeService;

@RequiredArgsConstructor
@Controller
public class IncomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final IncomeService incomeService;
	private final ExpensesService expensesService;
	
	
	@RequestMapping(value = "/income", method = RequestMethod.GET)
	public String updateIncome(Model model) {
		model.addAttribute("incomeList", incomeService.getIncomeList());
		model.addAttribute("incomeSumAll", incomeService.getSumAllIncome());
		model.addAttribute("expensesSumAll", expensesService.getSumAllExpenses());
		
		return "income/income";
	}
	
	@ResponseBody
	@RequestMapping(value = "/income", method = RequestMethod.POST)
	public String income(Model model, @ModelAttribute Income inCome, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(inCome.getInNo()==null) {
			inCome.setInId(loginMember.getUserid());
			incomeService.addIncome(inCome);	
		} else {
			inCome.setInId(loginMember.getUserid());
			incomeService.modifyIncome(inCome);
		}
		
		return "success";
	}
	
	@RequestMapping(value="/income_remove", method=RequestMethod.POST)
	@ResponseBody
	public String removeIncome(HttpServletRequest request) {
		String[] inNoList=request.getParameterValues("inNoList");
		
		for(String inNo:inNoList) {
			incomeService.removeIncome(Integer.parseInt(inNo));
		}
		
		return "redirect:/income";
	}
}