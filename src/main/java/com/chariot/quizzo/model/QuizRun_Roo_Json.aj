// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariot.quizzo.model;

import com.chariot.quizzo.model.QuizRun;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect QuizRun_Roo_Json {
    
    public String QuizRun.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static QuizRun QuizRun.fromJsonToQuizRun(String json) {
        return new JSONDeserializer<QuizRun>().use(null, QuizRun.class).deserialize(json);
    }
    
    public static String QuizRun.toJsonArray(Collection<QuizRun> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<QuizRun> QuizRun.fromJsonArrayToQuizRuns(String json) {
        return new JSONDeserializer<List<QuizRun>>().use(null, ArrayList.class).use("values", QuizRun.class).deserialize(json);
    }
    
}
