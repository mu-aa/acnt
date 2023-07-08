package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Expenses;
import xyz.itwill.mapper.ExpensesMapper;

@RequiredArgsConstructor
@Repository
public class ExpensesDAOImpl implements ExpensesDAO{
	private final SqlSession session;

	@Override
	public int insertExpenses(Expenses expenses) {
		return session.getMapper(ExpensesMapper.class).insertExpenses(expenses);
	}

	@Override
	public int updateExpenses(Expenses expenses) {
		return session.getMapper(ExpensesMapper.class).updateExpenses(expenses);
	}

	@Override
	public int deleteExpenses(int num) {
		return session.getMapper(ExpensesMapper.class).deleteExpenses(num);
	}
	
	@Override
	public Integer selectSumExpenses(String exCate) {
		return session.getMapper(ExpensesMapper.class).selectSumExpenses(exCate);
	}

	@Override
	public Integer selectSumAllExpenses() {
		return session.getMapper(ExpensesMapper.class).selectSumAllExpenses();
	}
	
	@Override
	public Expenses selectExpenses(int num) {
		return session.getMapper(ExpensesMapper.class).selectExpenses(num);
	}

	@Override
	public List<Expenses> selectExpensesList() {
		return session.getMapper(ExpensesMapper.class).selectExpensesList();
	}

	@Override
	public List<Expenses> selectExpensesDateIdList(Map<String, Object> map) {
		
		return session.getMapper(ExpensesMapper.class).selectExpensesDateIdList(map);
	}

	@Override
	public List<Expenses> selectExpensesIdList(String exId) {
		
		return session.getMapper(ExpensesMapper.class).selectExpensesIdList(exId);
	}

	@Override
	public int deleteCashCardExpenses() {
		
		return session.getMapper(ExpensesMapper.class).deleteCashCardExpenses();
	}
}