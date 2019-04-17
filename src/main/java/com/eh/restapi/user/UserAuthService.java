package com.eh.restapi.user;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;


public class UserAuthService extends JdbcDaoImpl 
{
	
	/**
	 * 입력받은 userID로 사용자 정보(UserDetails)를 조회하여 반환한다.
	 * @param String userId 사용자 계정
	 * @return  List<UserDetails> 사용자 정보
	 */
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		//return getJdbcTemplate().qu
		return new User("asd","asd", AuthorityUtils.createAuthorityList("ROLE_USER"));
	}
}
