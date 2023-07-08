package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Card;
import xyz.itwill.mapper.CardMapper;

@Repository
@RequiredArgsConstructor
public class CardDAOImpl implements CardDAO {

	private final SqlSession sqlSession;
	
	@Override
	public int insertCard(Card card) {
	
		return sqlSession.getMapper(CardMapper.class).insertCard(card);
	}

	@Override
	public int deleteCard(String cdName) {
		
		return sqlSession.getMapper(CardMapper.class).deleteCard(cdName);
	}

	@Override
	public List<Card> selectCardList() {
		
		return sqlSession.getMapper(CardMapper.class).selectCardList();
	}

}
