fun main() {
    /*
     * Belajar tipe data Number
     * Integer -> Byte, Short, Integer, Long
     * Floating point -> Float, Double
     * Literals -> Binary, Hexadecimal
     * Number Separator -> underscore
     *
     * Memasukkan nilai Float harus ditambahkan huruf F di belakang angka nya.
     * */

    // membuat variable dan tipe data Int
    var umur: Byte = 23
    var saldo: Int = 2750000

    println(umur)
    println(saldo)

    // membuat variable dan tipe data Float
    var derajat: Float = 32.9F
    var radius: Double = 2342342343.54535

    println(derajat)
    println(radius)

    // Literal integer format
    var decimalNumbers: Int = 90
    var hexadecimalNumbers: Int = 0xFF
    var binaryLiterals: Int = 0b0010

    println(decimalNumbers)
    println(hexadecimalNumbers)
    println(binaryLiterals)

    // Number separator memakai underscore
    // tidak akan tampil di aplikasi, namun berguna untuk
    // mempermudah programmer untuk membaca digit angka di source code
    var jumlahSaldo: Long = 100_000_000L

    println(jumlahSaldo)

}
