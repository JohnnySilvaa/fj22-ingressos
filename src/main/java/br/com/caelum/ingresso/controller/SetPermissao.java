package br.com.caelum.ingresso.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.Transactional;

import br.com.caelum.ingresso.dao.LoginDao;
import br.com.caelum.ingresso.dao.PermissaoDao;
import br.com.caelum.ingresso.model.Permissao;


public class SetPermissao {

	@Transactional
	public void salvaPermissao() {
		
		PermissaoDao permissaoDao = new PermissaoDao();
		
		Set<Permissao> permissoes = new HashSet<>();
 		Permissao admin = new Permissao("ADMIN");
 		Permissao comprador = new Permissao("COMPRADOR");
 		permissoes.add(admin);
		permissoes.add(comprador);
		
		
 		permissaoDao.save(admin);
		permissaoDao.save(comprador);
	


	}
}
