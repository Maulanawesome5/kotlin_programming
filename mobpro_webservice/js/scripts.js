const mysql = require("mysql");


const koneksi = mysql.createConnection({
    host : "localhost",
    user : "root",
    password : "root",
    port : 3307,
});

koneksi.connect((error) => {
    if(error){
        console.log("Error. Terjadi suatu kesalahan, coba lagi");
        return;
    }
    console.log("Succsess. Koneksi anda berhasil!");
});

koneksi.end((error) => {});
