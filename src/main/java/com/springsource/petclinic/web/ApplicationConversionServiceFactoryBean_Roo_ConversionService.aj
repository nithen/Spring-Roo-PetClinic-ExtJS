// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.springsource.petclinic.domain.Owner;
import com.springsource.petclinic.domain.Pet;
import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.domain.Visit;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    Converter<Visit, String> ApplicationConversionServiceFactoryBean.getVisitConverter() {
        return new Converter<Visit, String>() {
            public String convert(Visit source) {
                return new StringBuilder().append(source.getDescription()).append(" ").append(source.getVisitDate()).toString();
            }
        };
    }
    
    Converter<Pet, String> ApplicationConversionServiceFactoryBean.getPetConverter() {
        return new Converter<Pet, String>() {
            public String convert(Pet source) {
                return new StringBuilder().append(source.getName()).append(" ").append(source.getWeight()).toString();
            }
        };
    }
    
    Converter<Vet, String> ApplicationConversionServiceFactoryBean.getVetConverter() {
        return new Converter<Vet, String>() {
            public String convert(Vet source) {
                return new StringBuilder().append(source.getFirstName()).append(" ").append(source.getLastName()).append(" ").append(source.getAddress()).toString();
            }
        };
    }
    
    Converter<Owner, String> ApplicationConversionServiceFactoryBean.getOwnerConverter() {
        return new Converter<Owner, String>() {
            public String convert(Owner source) {
                return new StringBuilder().append(source.getFirstName()).append(" ").append(source.getLastName()).append(" ").append(source.getAddress()).toString();
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getVisitConverter());
        registry.addConverter(getPetConverter());
        registry.addConverter(getVetConverter());
        registry.addConverter(getOwnerConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}