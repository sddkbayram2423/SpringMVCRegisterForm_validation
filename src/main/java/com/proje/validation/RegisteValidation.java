package com.proje.validation;

import org.springframework.stereotype.Component;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.proje.model.RegisterForm;

@Component
public class RegisteValidation {
	
	
	public boolean denetle(Class<?> durum) {
		
		return RegisterForm.class.isAssignableFrom(durum);
	}
	public void validate(Object hedef,Errors hatalar) {
		RegisterForm form=(RegisterForm) hedef;
		ValidationUtils.rejectIfEmptyOrWhitespace(hatalar, "kullaniciAdi", "Burasi bos gecilemez");
		String kullaniciAdi=form.getKullaniciAdi();
		
		if(kullaniciAdi.length()>1&&kullaniciAdi.length()<5) {
			hatalar.rejectValue(kullaniciAdi, "Karakter sayisi yetersiz");
		}
		
		String parola=form.getParola();
		String parola2=form.getParolaTekrar();
		if(!(parola.trim().equals(parola2.trim()))) {
			hatalar.rejectValue("parola", "Girdiginiz parolalar farkli");
		}
	
	
	} 

}
