package com.tz.bs.service;

import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.tz.bs.entity.Address;
import com.tz.bs.entity.Order;
import com.tz.bs.entity.OrderItem;
import com.tz.bs.entity.OrderStatus;
import com.tz.bs.entity.User;
import com.tz.bs.service.OrderService;
import com.tz.bs.util.BeanFactory;

public class OrderServiceTest {
	OrderService os = (OrderService) BeanFactory.getBean("orderService");

	@Test
	public void testSave() {
		Order o = new Order();
		User u = new User();
		u.setUserid(1L);
		o.setUser(u);
		Address add = new Address();
		add.setAddressid(1L);
		o.setAddress(add);
		o.setCreateDate(new Date());
		o.setOrderNum("1L");
		o.setOrderStatus(OrderStatus.配送中);
		List<OrderItem> items=new ArrayList<>();
		for(int i=0;i<10;i++){
			OrderItem item=new OrderItem();
			item.setUnit_price(10D);
			item.setAllPrice(20D);
			item.setBook_author("alex"+i);
			item.setBook_isbn("999");
			item.setBook_name("blues");
			item.setBook_url("default.jpg");
			item.setCount(2);
			items.add(item);
		}
		o.setTotal(100D);
		o.setItems(items);
		os.save(o);

	}

	@Test
	public void testDelete() {
		
		
	}

	@Test
	public void testFindById() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindByNum() {
		fail("Not yet implemented");
	}

	@Test
	public void testQueryByPage() {
		fail("Not yet implemented");
	}

}
