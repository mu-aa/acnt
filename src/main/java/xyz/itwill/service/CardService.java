package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Card;

public interface CardService {
	void addCard(Card card);
	void removeCard(String cdName);
	List<Card> getCardList();
}
