package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Expenses;

public interface ExpensesMapper {
	int	insertExpenses(Expenses expenses);
	int updateExpenses(Expenses expenses);
	int deleteExpenses(int num);
	int deleteCashCardExpenses();
	Integer selectSumExpenses(String exCate);
	Integer selectSumAllExpenses();
	Expenses selectExpenses(int num);
	List<Expenses> selectExpensesList();
	List<Expenses> selectExpensesDateIdList(Map<String, Object> map);
	List<Expenses> selectExpensesIdList(String exId);
}