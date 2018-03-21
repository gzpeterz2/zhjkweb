package com.hc.web.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hc.web.po.Banner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-*.xml")
public class BannerMapperTest {
	
	@Autowired
	@Qualifier("bannerMapper")
	private BannerMapper mapper;

	@Test
	public void testSelectByLocation() throws SQLException {
		List<Banner> list = mapper.selectByLocation("HomePage");
		System.out.println(list);
		assertTrue(list.size() > 0);
	}

}
