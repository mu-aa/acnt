package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Income;

public interface IncomeService {
	void addIncome(Income inCome);
	void modifyIncome(Income inCome);
	void removeIncome(Integer inNo);
	Integer getSumAllIncome();
	Income getIncome(Integer inNo);
	List<Income> getIncomeList();
}
