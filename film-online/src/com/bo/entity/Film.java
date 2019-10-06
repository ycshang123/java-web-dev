package com.bo.entity;/*@ClassName Film
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/4
 *@Version 1.0
 **/
public class Film {
    private Integer id;
    private String film_name;
    private Double score;
    private String director;
    private String actor;
    private String language;
    private Integer time;
    private String type;
    private String avatar;
    private String brief;
    public Film() {
    }

    public Film(Integer id, String film_name, Double score, String director, String actor, String language, Integer time, String type, String avatar, String brief) {
        this.id = id;
        this.film_name = film_name;
        this.score = score;
        this.director = director;
        this.actor = actor;
        this.language = language;
        this.time = time;
        this.type = type;
        this.avatar = avatar;
        this.brief = brief;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilm_name() {
        return film_name;
    }

    public void setFilm_name(String film_name) {
        this.film_name = film_name;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }
    @Override
    public String toString() {
        return "Film{" +
                "id=" + id +
                ", film_name='" + film_name + '\'' +
                ", score=" + score +
                ", director='" + director + '\'' +
                ", actor='" + actor + '\'' +
                ", language='" + language + '\'' +
                ", time=" + time +
                ", type='" + type + '\'' +
                ", avatar='" + avatar + '\'' +
                ", brief='" + brief + '\'' +
                '}';
    }
}
