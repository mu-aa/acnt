package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Income;

public interface IncomeDAO {
	int insertIncome(Income income);
	int updateIncome(Income income);
	int deleteIncome(Integer inNo);
	int deleteAmountIncome();
	Integer selectSumAllIncome();
	Income selectIncome(Integer inNo);
	List<Income> selectIncomeList();
	List<Income> selectIncomeIdList(String inId);
	List<Income> selectIncomeDateIdList(Map<String, Object> map);
}
