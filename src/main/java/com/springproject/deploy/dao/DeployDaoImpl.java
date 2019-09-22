package com.springproject.deploy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.deploy.dto.DeployDto;
import com.springproject.employee.dto.EmployeeDto;

@Repository
public class DeployDaoImpl extends SqlSessionDaoSupport implements DeployDao{

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public int insertOneDeployDao(DeployDto deployDto) {
		return getSqlSession().insert("DeployDao.insertOneDeployDao", deployDto);
	}

	@Override
	public List<DeployDto> selectAllDeployDao() {
		return getSqlSession().selectList("DeployDao.selectAllDeployDao");
	}

	@Override
	public DeployDto selectOneDeployDao(int deployNo) {
		return getSqlSession().selectOne("DeployDao.selectOneDeployDao", deployNo);
	}

	@Override
	public int updateOneDeployDao(DeployDto deployDto) {
		return getSqlSession().update("DeployDao.updateOneDeployDao", deployDto);
	}

	@Override
	public int deleteOneDeployDao(int deployNo) {
		return getSqlSession().delete("DeployDao.deleteOneDeploy_Dao", deployNo);
	}

	@Override
	public List<EmployeeDto> selectSomeDeployDao(EmployeeDto employeeDto) {
		return getSqlSession().selectList("DeployDao.selectSomeDeployDao", employeeDto);
	}

	
}
