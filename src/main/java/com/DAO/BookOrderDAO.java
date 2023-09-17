package com.DAO;

import java.util.List;

import com.user.entity.Book_Order;

public interface BookOrderDAO {
	
	public boolean saveOrder(List<Book_Order> blist);

}
