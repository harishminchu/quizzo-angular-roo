// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariot.quizzo.model;

import com.chariot.quizzo.model.Choice;
import com.chariot.quizzo.model.Question;
import com.chariot.quizzo.model.Quiz;
import java.util.Set;

privileged aspect Question_Roo_JavaBean {
    
    public String Question.getQuestionText() {
        return this.questionText;
    }
    
    public void Question.setQuestionText(String questionText) {
        this.questionText = questionText;
    }
    
    public short Question.getSortOrder() {
        return this.sortOrder;
    }
    
    public void Question.setSortOrder(short sortOrder) {
        this.sortOrder = sortOrder;
    }
    
    public Quiz Question.getQuiz() {
        return this.quiz;
    }
    
    public void Question.setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }
    
    public Set<Choice> Question.getChoices() {
        return this.choices;
    }
    
    public void Question.setChoices(Set<Choice> choices) {
        this.choices = choices;
    }
    
}
