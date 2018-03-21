package com.hc.web.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hc.web.po.Succstudent;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-*.xml")
public class SuccstudentMapperTest {
	
	@Autowired
	private SuccstudentMapper mapper;

	@Test
	public void testSelectAll() throws Exception {
		List<Succstudent> list = mapper.selectAll();
		System.out.println(list);
		assertTrue(list.size() > 0);
	}

}
