// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariot.quizzo.web;

import com.chariot.quizzo.db.Quiz;
import com.chariot.quizzo.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Quiz, String> ApplicationConversionServiceFactoryBean.getQuizToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.chariot.quizzo.db.Quiz, java.lang.String>() {
            public String convert(Quiz quiz) {
                return new StringBuilder().append(quiz.getName()).append(' ').append(quiz.getShort_name()).append(' ').append(quiz.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Quiz> ApplicationConversionServiceFactoryBean.getIdToQuizConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.chariot.quizzo.db.Quiz>() {
            public com.chariot.quizzo.db.Quiz convert(java.lang.Long id) {
                return Quiz.findQuiz(id);
            }
        };
    }
    
    public Converter<String, Quiz> ApplicationConversionServiceFactoryBean.getStringToQuizConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.chariot.quizzo.db.Quiz>() {
            public com.chariot.quizzo.db.Quiz convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Quiz.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getQuizToStringConverter());
        registry.addConverter(getIdToQuizConverter());
        registry.addConverter(getStringToQuizConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}