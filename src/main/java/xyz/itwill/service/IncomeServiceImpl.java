package xyz.itwill.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.IncomeDAO;
import xyz.itwill.dto.Income;

@RequiredArgsConstructor
@Service
public class IncomeServiceImpl implements IncomeService {
	private final IncomeDAO incomeDAO;
	
	@Transactional
	@Override
	public void addIncome(Income income) {
		if(income.getInDate()==null || income.getInDate().equals("")) {
			income.setInDate(LocalDate.now().toString().substring(0,10));
		}
		if(income.getInAmount()==null) {
			income.setInAmount(0);
		}
		incomeDAO.insertIncome(income);
	}
	
	@Transactional
	@Override
	public void modifyIncome(Income inCome) {
		incomeDAO.updateIncome(inCome);
	}
	
	@Transactional
	@Override
	public void removeIncome(Integer inNo) {
		incomeDAO.deleteIncome(inNo);
	}
	
	@Override
	public Integer getSumAllIncome() {
		return incomeDAO.selectSumAllIncome();
	}

	@Override
	public Income getIncome(Integer inNo) {
		return incomeDAO.selectIncome(inNo);
	}

	@Override
	public List<Income> getIncomeList() {
		return incomeDAO.selectIncomeList();
	}
}
