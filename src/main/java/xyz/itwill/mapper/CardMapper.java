package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Card;

public interface CardMapper {
	 int insertCard(Card card);
	 int deleteCard(String cdName);
	 List<Card> selectCardList();
	    
}
