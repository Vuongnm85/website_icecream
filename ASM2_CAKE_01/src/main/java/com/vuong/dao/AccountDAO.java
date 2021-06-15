package com.vuong.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vuong.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

	@Query("SELECT o FROM Account o WHERE o.username LIKE ?1")
	Optional<Account> findById(String username);
}
