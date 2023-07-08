package xyz.itwill.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.BudgetDAO;
import xyz.itwill.dto.Budget;

@Service
@RequiredArgsConstructor
public class BudgetServiceImpl implements BudgetService{
    private final BudgetDAO budgetDAO;

	@Override
	public void modifyBudget(Budget budget) {
		budgetDAO.updateBudget(budget);
	}

	@Override
	public Budget getBudget(Integer no) {
		return budgetDAO.selectBudget(no);
	}

	@Override
	public List<Budget> getBudgetList() {
		return budgetDAO.selectBudgetList();
	}

	@Override
	public Integer getSumAllBudget() {
		return budgetDAO.selectSumAllBudget();
	}
}