package com.hc.web.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hc.web.po.HomePage;
import com.hc.web.service.HomeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-*.xml")
public class HomeServiceImplTest {
	@Autowired
	private HomeService homeService;

	@Test
	public void testGetHomePage() throws Exception {
		HomePage page = homeService.getHomePage();
		System.out.println(page);
		assertTrue(page != null);
	}
}
