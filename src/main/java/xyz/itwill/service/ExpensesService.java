package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Expenses;

public interface ExpensesService {
	void addExpenses(Expenses expenses);
	void modifyExpenses(Expenses expenses);
	void removeExpenses(int num);
	Integer getSumExpenses(String exCate);
	Integer getSumAllExpenses();
	Expenses getExpenses(int num);
	List<Expenses> getExpensesList();
}