package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Budget;
import xyz.itwill.mapper.BudgetMapper;

@Repository
@RequiredArgsConstructor
public class BudgetDAOImpl implements BudgetDAO {
	private final SqlSession sqlSession;

	@Override
	public Integer updateBudget(Budget budget) {
		return sqlSession.getMapper(BudgetMapper.class).updateBudget(budget);
	}

	@Override
	public Budget selectBudget(Integer no) {
		return sqlSession.getMapper(BudgetMapper.class).selectBudget(no);
	}

	@Override
	public List<Budget> selectBudgetList() {
		return sqlSession.getMapper(BudgetMapper.class).selectBudgetList();
	}

	@Override
	public Integer selectSumAllBudget() {
		return sqlSession.getMapper(BudgetMapper.class).selectSumAllBudget();
	}
}