package com.spring.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.spring.dto.AdminVO;

public class User implements UserDetails{

	private AdminVO admin;
	public User(AdminVO admin) {
		this.admin = admin;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority(admin.getRoll()));
		return roles;
	}

	@Override
	public String getPassword() {
		return admin.getPwd();
	}

	@Override
	public String getUsername() {
		return admin.getAdminNum();
	}

	@Override
	public boolean isAccountNonExpired() { // 기간제 계정의 경우 기간만료 여부 : enabled =4
		return admin.getEnabled()!=4;
	}

	@Override
	public boolean isAccountNonLocked() {// 사용 정지 혹은 휴먼계정 : enabled =3
		return admin.getEnabled()!=3;
	}

	@Override
	public boolean isCredentialsNonExpired() {  // 인증정보 만료 여부 : enabled =2
		return admin.getEnabled()!=2;
	}

	@Override
	public boolean isEnabled() {  // 탈퇴 혹은 삭제 : enabled = 0
		return admin.getEnabled()!=0;
	}
	
	public AdminVO getAdminVO() {
		return this.admin;
	}

}
