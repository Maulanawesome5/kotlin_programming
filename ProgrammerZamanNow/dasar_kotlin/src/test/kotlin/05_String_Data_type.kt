fun main() {
    /*
    * String -> adalah tipe data yang terdiri dari
    * kumpulan character atau bisa disebut text.
    * Tidak hanya huruf, angka juga termasuk String jika diapit oleh tanda "kutip dua".
    * */

    val firstName: String = "Maulana"
    val middleName: String = "Aji"
    val lastName: String = "Wicaksono"
    val fullName: String = "Maulana Aji Wicaksono"
    val addresses: String = """
        |Jalan Menuju Surga no. 666,
        |RT. 6 RW. 9, Kecamatan Langit Ketujuh,
        |Kabupaten Surga.
    """.trimMargin()

    println(firstName)
    println(lastName)
    println(fullName)
    println(addresses)

    /* String Concatenation */
    val fullName2: String = firstName + " " + lastName
    val fullName3: String = "$firstName $middleName $lastName"  // format sekarang
    val nameLength: String = "Len of $fullName3 : ${fullName3.length}"

    println(fullName2)
    println(fullName3)
    println(nameLength)
}
