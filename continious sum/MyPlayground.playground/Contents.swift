import UIKit

//find the all the possible continuous sums of the number (15=1+2+3+4+5, 15=4+5+6, 15=7+8) -> return 3

func getNumberOfContiniousSumPaths(_ number: Int) -> Int {
    var counter = 0
    for k in 1..<number {
        var i = k
        var j = number - 1
        while i < number && i < j{
            let sum = (i + j) * (j - i + 1) / 2
            print("i: \(i), j: \(j)")
            print(sum)
            if sum == number {
                counter += 1
                i += 1
                j -= 1
            } else if sum > number {
                j -= 1
            } else {
                i += 1
            }
        }
    }
    return counter
}

getNumberOfContiniousSumPaths(15)
