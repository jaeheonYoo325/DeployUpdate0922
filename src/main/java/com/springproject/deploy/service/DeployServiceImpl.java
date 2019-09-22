package com.springproject.deploy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.deploy.dao.DeployDao;
import com.springproject.deploy.dto.DeployDto;
import com.springproject.employee.dto.EmployeeDto;

@Service
public class DeployServiceImpl implements DeployService {

	@Autowired
	private DeployDao deployDao;

	@Override
	public boolean insertOneDeployService(DeployDto deployDto) {
		return this.deployDao.insertOneDeployDao(deployDto) > 0;
	}

	@Override
	public List<DeployDto> selectAllDeployService() {
		return this.deployDao.selectAllDeployDao();
	}

	@Override
	public DeployDto selectOneDeployService(int deployNo) {
		return this.deployDao.selectOneDeployDao(deployNo);
	}

	@Override
	public boolean updateOneDeployService(DeployDto deployDto) {
		return this.deployDao.updateOneDeployDao(deployDto) > 0;
	}

	@Override
	public boolean deleteOneDeployService(int deployNo) {
		return this.deployDao.deleteOneDeployDao(deployNo) > 0;
	}

	@Override
	public List<EmployeeDto> selectSomeDeployService(EmployeeDto employeeDto) {
		return this.deployDao.selectSomeDeployDao(employeeDto);
	}


}
