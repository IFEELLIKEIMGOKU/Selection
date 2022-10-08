var words = [String]()
while let line = readLine() {
    words.append(line)
}
words.remove(at: (words.count-1))
func selectSort(_ array: [String]) {
    if array.count > 1 {
        var sortedArray = array
        var pass = 0
        let swaps = 1
        var totalSwaps = 0
        var lowest = 0
        var n = 0
        print("Pass: 0, Swaps: 0/0, Array: \(array)")
        if array.count > 2 {
            for p in 0...(array.count-2) {
                n = p
                for i in 1...(array.count-p-1) {
                    if sortedArray[n] > sortedArray[p+i] {
                        lowest = (p+i)
                        n = p+i
                    }
                }
                if lowest != p {
                    sortedArray.swapAt(p, lowest)
                }
                totalSwaps += 1
                pass += 1
                print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedArray)")
                lowest = p+1
            }
        }
    }
}
selectSort(words)
