package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Budget;


public interface BudgetDAO {
	Integer updateBudget(Budget budget);
	Budget selectBudget(Integer no);
	List<Budget> selectBudgetList();
	Integer selectSumAllBudget();
}