package com.springproject.deploy.service;

import java.util.List;

import com.springproject.deploy.dto.DeployDto;
import com.springproject.employee.dto.EmployeeDto;

public interface DeployService {

	public boolean insertOneDeployService(DeployDto deployDto);
	
	public List<DeployDto> selectAllDeployService();
	
	public DeployDto selectOneDeployService(int deployNo);
	
	public boolean updateOneDeployService(DeployDto deployDto);
	
	public boolean deleteOneDeployService(int deployNo);
	
	public List<EmployeeDto> selectSomeDeployService(EmployeeDto employeeDto);
}
