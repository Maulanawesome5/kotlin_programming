package com.tutorial;

class Student {
    String Nama;
    String NIM;

    Student(String nama, String nim) {
        this.Nama = nama;
        this.NIM = nim;
    }
    void display(){
        System.out.println("Nama : " + this.getNama());
        System.out.println("NIM  : " + this.getNIM());
    }
    String getNama(){ return this.Nama; }
    String getNIM(){ return this.NIM; }
    String setNama(String newName){
        return newName = this.Nama;
    }
}

public class Main
{
    public static void main(String[] args)
    {
        Student student = new Student("Maulana Aji Wicaksono", "1714311002");
        student.display();
    }
}
