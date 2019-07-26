package com.javaweb.entity;

public class Complex {
    private double real;
    private double ima;
    private String infoAdd;
    private String infosub;
    private String infomul;
    private String infodiv;

    public Complex() { }

    public Complex(double real, double ima) {
        this.real = real;
        this.ima = ima;
    }

    public double getReal() {
        return real;
    }

    public void setReal(double real) {
        this.real = real;
    }

    public double getIma() {
        return ima;
    }

    public void setIma(double ima) {
        this.ima = ima;
    }

    public String getInfoAdd() {
        return infoAdd;
    }

    public void setInfoAdd(String infoAdd) {
        this.infoAdd = infoAdd;
    }

    public String getInfosub() {
        return infosub;
    }

    public void setInfosub(String infosub) {
        this.infosub = infosub;
    }

    public String getInfomul() {
        return infomul;
    }

    public void setInfomul(String infomul) {
        this.infomul = infomul;
    }

    public String getInfodiv() {
        return infodiv;
    }

    public void setInfodiv(String infodiv) {
        this.infodiv = infodiv;
    }

    public void add(Complex a) {
        this.real=a.real+this.real;
        this.ima=this.ima + a.ima;
        if (ima >= 0.0){
            infoAdd= real + "+" + ima + "*i";}
        else{
            infoAdd= real + "-" + (-ima) + "*i";}
    }

    public void sub(Complex a) {
        this.real=this.real - a.real;
        this.ima=this.ima - a.ima;
        if (ima >= 0.0){
            infosub= real + "+" + ima + "*i";}
        else{
            infosub= real + "-" + (-ima) + "*i";}
    }

    public void mul(Complex a) {
        this.real = this.real * a.real - this.ima * a.ima;
        this.ima = this.real * a.ima + this.ima * a.real;
        if (ima >= 0.0){
            infomul= real + "+" + ima + "*i";}
        else{
            infomul= real + "-" + (-ima) + "*i";}
    }

    public void div(Complex a) {
        double z = a.real * a.real + a.ima * a.ima;
        this.real = (this.real * a.real + this.ima * a.ima) / z;
        this.ima = (this.ima * a.real - this.real * a.ima) / z;
        if (ima >= 0.0){
            infodiv= real + "+" + ima + "*i";}
        else{
            infodiv= real + "-" + (-ima) + "*i";}
    }

}
