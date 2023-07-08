package xyz.itwill.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Budget;
import xyz.itwill.dto.Expenses;
import xyz.itwill.service.BudgetService;
import xyz.itwill.service.ExpensesService;

@RequiredArgsConstructor
@Controller
public class BudgetController {
    private static final Logger logger = LoggerFactory.getLogger(BudgetController.class);
    private final BudgetService budgetService;
    private final ExpensesService expensesService;
    
	@RequestMapping(value = "/budget", method = RequestMethod.GET)
	public String budget(Model model, Expenses expenses) {
		model.addAttribute("budgetList", budgetService.getBudgetList());
		model.addAttribute("expensesList", expensesService.getExpensesList());
		model.addAttribute("budgetSumAll", budgetService.getSumAllBudget());
		model.addAttribute("expensesSumAll", expensesService.getSumAllExpenses());
		
		model.addAttribute("cate1", expensesService.getSumExpenses("식비"));
		model.addAttribute("cate2", expensesService.getSumExpenses("주거/통신"));
		model.addAttribute("cate3", expensesService.getSumExpenses("생활용품"));
		model.addAttribute("cate4", expensesService.getSumExpenses("의복/미용"));
		model.addAttribute("cate5", expensesService.getSumExpenses("건강/문화"));
		model.addAttribute("cate6", expensesService.getSumExpenses("교육/육아"));
		model.addAttribute("cate7", expensesService.getSumExpenses("교통/차량"));
		model.addAttribute("cate8", expensesService.getSumExpenses("경조사/회비"));
		model.addAttribute("cate9", expensesService.getSumExpenses("세금/이자"));
		model.addAttribute("cate10", expensesService.getSumExpenses("용돈/기타"));
		model.addAttribute("cate11", expensesService.getSumExpenses("미분류"));
		return "table/budget";
	}
	
	@ResponseBody
	@RequestMapping(value = "/budget", method = RequestMethod.POST)
	public String budget(@ModelAttribute Budget budget) {
		budgetService.modifyBudget(budget);
		return "success";
	}
}