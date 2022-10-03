fun main() {
    /*
    * Number conversion / casting data type
    * mengubah suatu tipe data menjadi tipe data lainnya.
    * */

    val angkaInteger: Int = 100
    val jumlahSaldo: Long = 9_000_000_000L

    // conversion
    val dataShort: Short = angkaInteger.toShort()
    val dataSaldo: Int = jumlahSaldo.toInt()
    val konversiInt: Float = angkaInteger.toFloat()
    val konversiSaldo: Double = jumlahSaldo.toDouble()

    println(dataShort)
    println(dataSaldo)
    println(konversiInt)
    println(konversiSaldo)
}
