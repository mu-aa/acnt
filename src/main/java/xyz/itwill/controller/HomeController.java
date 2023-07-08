package xyz.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Expenses;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.service.BudgetService;
import xyz.itwill.service.ExpensesService;
import xyz.itwill.service.IncomeService;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final ExpensesService expensesService;
	private final IncomeService incomeService;
	private final BudgetService budgetService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute("expensesSumAll", expensesService.getSumAllExpenses());
		model.addAttribute("incomeSumAll", incomeService.getSumAllIncome());
		model.addAttribute("expensesList", expensesService.getExpensesList());
		
		for(int i=1;i<=11;i++) {
			model.addAttribute("budget"+i, budgetService.getBudget(i).getBwon());
		}
		/*model.addAttribute("budget2", budgetService.getBudget(2).getBwon());
		model.addAttribute("budget3", budgetService.getBudget(3).getBwon());
		model.addAttribute("budget4", budgetService.getBudget(4).getBwon());
		model.addAttribute("budget5", budgetService.getBudget(5).getBwon());
		model.addAttribute("budget6", budgetService.getBudget(6).getBwon());
		model.addAttribute("budget7", budgetService.getBudget(7).getBwon());
		model.addAttribute("budget8", budgetService.getBudget(8).getBwon());
		model.addAttribute("budget9", budgetService.getBudget(9).getBwon());
		model.addAttribute("budget10", budgetService.getBudget(10).getBwon());
		model.addAttribute("budget11", budgetService.getBudget(11).getBwon());*/
		return "main";
	}

	@ResponseBody
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String main(Model model, @ModelAttribute Expenses expenses, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(expenses.getExNo()==null) {
			expenses.setExId(loginMember.getUserid());
			expensesService.addExpenses(expenses);
		} else {
			expenses.setExId(loginMember.getUserid());
			expensesService.modifyExpenses(expenses);
		}
		
		return "success";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	@ResponseBody
	public String remove(HttpServletRequest request) {
		String[] exNoList = request.getParameterValues("exNoList");

		for (String exNo : exNoList) {
			expensesService.removeExpenses(Integer.parseInt(exNo));
		}

		return "success";
	}

	@ExceptionHandler(MemberNotFoundException.class)
	@ResponseBody
	public String exceptionHanlder() {
		return "success";
	}
}