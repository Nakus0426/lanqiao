package com.javaweb.entity;

public class Complex2 {
    private double real;
    private double ima;

    public Complex2(double real, double ima) {
        this.real = real;
        this.ima = ima;
    }

    public Complex2() {
    }

    public double getIma() {
        return ima;
    }

    public void setIma(double ima) {
        this.ima = ima;
    }

    public double getReal() {
        return real;
    }

    public void setReal(double real) {
        this.real = real;
    }

    public Complex2 add(Complex2 a) {
        return new Complex2(this.real + a.real, this.ima + a.ima);
    }

    public Complex2 sub(Complex2 a) {
        return new Complex2(this.real - a.real, this.ima - a.ima);
    }

    public Complex2 mul(Complex2 a) {
        double x = this.real * a.real - this.ima * a.ima;
        double y = this.real * a.ima + this.ima * a.real;
        return new Complex2(x, y);
    }

    public Complex2 div(Complex2 a) {
        double z = a.real * a.real + a.ima * a.ima;
        double x = (this.real * a.real + this.ima * a.ima) / z;
        double y = (this.ima * a.real - this.real * a.ima) / z;
        return new Complex2(x, y);
    }

    public String info() {
        if (ima >= 0.0){
            return real + "+" + ima + "*i";}
        else{
            return real + "-" + (-ima) + "*i";}
    }
}
