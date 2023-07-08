package xyz.itwill.dao;

import java.util.List;

import lombok.Data;
import xyz.itwill.dto.Expenses;

@Data
public class ExpensesCollection {
	private List<Expenses> expensesList;
	
}
