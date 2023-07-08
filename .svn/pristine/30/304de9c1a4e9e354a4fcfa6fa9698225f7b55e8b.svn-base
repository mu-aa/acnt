package xyz.itwill.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.CardDAO;
import xyz.itwill.dto.Card;

@Service
@RequiredArgsConstructor
public class CardServiceImpl implements CardService{
	private final CardDAO cardDAO;
	
	@Override
	public void addCard(Card card) {
		cardDAO.insertCard(card);
		
	}

	@Override
	public void removeCard(String cdName) {
		cardDAO.deleteCard(cdName);
		
	}

	@Override
	public List<Card> getCardList() {
		
		return cardDAO.selectCardList();
	}
	
}
