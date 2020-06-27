package com.proje.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import javax.validation.constraints.Size;

public class RegisterForm {
	
	@NotEmpty
	@Size(min = 3,max = 45,message = "Bu alani bos gecilez")
	private String kullaniciAdi;
	
	@NotEmpty
	@Size(min = 5,max = 45)
	private String parola;
	
	@NotEmpty
	private String parolaTekrar;
	
	@NotEmpty
	@Email
	private String eposta;
	
	public RegisterForm() {
	}

	public String getKullaniciAdi() {
		return kullaniciAdi;
	}

	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}

	public String getParola() {
		return parola;
	}

	public void setParola(String parola) {
		this.parola = parola;
	}

	public String getParolaTekrar() {
		return parolaTekrar;
	}

	public void setParolaTekrar(String parolaTekrar) {
		this.parolaTekrar = parolaTekrar;
	}

	public String getEposta() {
		return eposta;
	}

	public void setEposta(String eposta) {
		this.eposta = eposta;
	}

	@Override
	public String toString() {
		return "RegisterForm [kullaniciAdi=" + kullaniciAdi + ", parola=" + parola + ", parolaTekrar=" + parolaTekrar
				+ ", eposta=" + eposta + "]";
	}
	
	
	
	
	
}
