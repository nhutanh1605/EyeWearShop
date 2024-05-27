package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.Accounts;

public interface AccountDAO extends JpaRepository<Accounts, String> {

}
