import pymysql as sql


try:
    # koneksi ke DBMS melalui docker container
    # koneksi sukses. pakai container bernama local_database
    koneksi = sql.Connection(host="localhost", user="root", password="root", database="buku_telepon", port=3307)
    kursor = koneksi.cursor()

    kursor.execute("SELECT VERSION();")

    data = kursor.fetchone()

    print(f"Versi DBMS yang anda pakai adalah {data}")

    koneksi.commit()
    koneksi.close()

except:
    print(f"Ada sesuatu yang salah. Coba lagi")
