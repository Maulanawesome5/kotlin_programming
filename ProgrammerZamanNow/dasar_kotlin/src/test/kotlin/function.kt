fun main() {
    var i = 0

    while (i <= 1000){
        println(i)
        i++
        if (i % 2 != 0){
            continue
        }
    }
}
