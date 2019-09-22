package com.springproject.deploy.dao;

import java.util.List;

import com.springproject.deploy.dto.DeployDto;
import com.springproject.employee.dto.EmployeeDto;

public interface DeployDao {

	public int insertOneDeployDao(DeployDto deployDto);
	
	public List<DeployDto> selectAllDeployDao();
	
	public DeployDto selectOneDeployDao(int deployNo);
	
	public int updateOneDeployDao(DeployDto deployDto);
	
	public int deleteOneDeployDao(int deployNo);
	
	public List<EmployeeDto> selectSomeDeployDao(EmployeeDto employeeDto);
	
	
	
}
