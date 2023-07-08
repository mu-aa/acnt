package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Expenses;

public interface ExpensesDAO {
	int	insertExpenses(Expenses expenses);
	int updateExpenses(Expenses expenses);
	int deleteExpenses(int num);
	int deleteCashCardExpenses();
	Expenses selectExpenses(int num);
	Integer selectSumExpenses(String exCate);
	Integer selectSumAllExpenses();
	List<Expenses> selectExpensesList();
	List<Expenses> selectExpensesDateIdList(Map<String, Object> map);
	List<Expenses> selectExpensesIdList(String exId);
}