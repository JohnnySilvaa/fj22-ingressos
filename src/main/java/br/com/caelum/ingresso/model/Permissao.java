package br.com.caelum.ingresso.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.security.core.GrantedAuthority;

@Entity
public class Permissao implements GrantedAuthority {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
    private String nome;

    public Permissao(String nome) {
        this.nome = nome;
    }
    

    /**
    * @deprecated hibernate only
    */
    public Permissao() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
       this.nome = nome;
    }

    @Override
    public String getAuthority() {
        return nome;
    }


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Permissao other = (Permissao) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}
    
    
}
