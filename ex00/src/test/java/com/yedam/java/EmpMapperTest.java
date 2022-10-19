package com.yedam.java;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.java.emp.mapper.EmpMapper;
import com.yedam.java.emp.service.EmpVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class EmpMapperTest {
	@Autowired
	EmpMapper mapper;
	
	@Before
	public void testDivid() {
		System.out.println("--------------");
	}
	
	//@Test
	public void returnObjectTest() {
		assertNotNull(mapper);
	}
	
	
	//@Test
	public void empAllSelectTest() {
		List<EmpVO> empList =mapper.getEmpList();
		for(EmpVO empInfo : empList) {
			System.out.println(empInfo);
		}
	}
		//@Test
		public void empInsertTest() {
			EmpVO empVO = new EmpVO();
			empVO.setFirstName("kil-dong");
			empVO.setLastName("Hong");
			empVO.setEmail("killu@google.com");
			empVO.setJobId("IT_PROG");
			empVO.setSalary(15000);
			
			mapper.insertEmp(empVO);
			
			assertEquals(empVO.getEmployeeId(), 207);
		}
		//@Test
		public void updateEmpSalary() {
			int result = mapper.updateEmpSalary(207);
			
			assertEquals(result, 1);
		}
		//@Test
		public void deleteEmpInfoTest() {
			int result = mapper.deleteEmpInfo(207);
			assertEquals(result, 1);
		}
		@Test
		public void updateEmpInfoTest() {
			EmpVO empVO = new EmpVO();
			empVO.setEmployeeId(207);
			empVO.setFirstName("WoW");
			empVO.setLastName("oWo");
			empVO.setEmail("ugonnaDie@shit.com");
			
			int result = mapper.updateEmpInfo(empVO);
			assertEquals(result, 1);
		}
	}

