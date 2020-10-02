package entity;

import java.io.Serializable;

import org.jcommon.encryption.SimpleMD5;

public class Login implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String email;
	private String senha;
	
	public Login() {
		// TODO Auto-generated constructor stub
	}

	public Login(Integer id, String email, String senha) {
		super();
		this.id = id;
		this.email = email;
		this.senha = senha;
	}

	public Login(String email, String senha) {
		super();
		this.email = email;
		this.senha = senha;
	}

	@Override
	public String toString() {
		return "Login [id=" + id + ", email=" + email + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
