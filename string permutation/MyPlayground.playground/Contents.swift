import Foundation

/*
 * Complete the function below.
 
 "123456789"
 100
 
 -1+2-3+4+5+6+78+9 = 100
 1+2+3-4+5+6+78+9
 1+2+34-5+67-8+9
 1+23-4+5+6+78-9
 1+23-4+56+7+8+9
 12+3+4+5-6-7+89
 12+3-4+5+67+8+9
 12-3-4+5-6+7+89
 123+4-5+67-89
 123+45-67+8-9
 123-4-5-6-7+8-9
 123-45-67+89
 
 3^n
 */
func sumToK(str: String, k: Int) -> Void {
    guard str.count > 0 else {
        print("The string is empty.")
        return
    }
    let numbers = Array(str)
    var result: [String] = []
    permutation(numbers, 0, k, "", &result)
    print(result)
    return
}

func eval(str: String) -> Int {
    var result = 0
    var temp : String = "0" //current number
    var operation = 0 //0 - addition, 1 - substraction
    for i in str {
        switch i {
        case "+":
            if operation == 0 {
                result += Int(temp)!
            } else {
                result -= Int(temp)!
            }
            operation = 0
            temp = "0"
        case "-":
            if operation == 0 {
                result += Int(temp)!
            } else {
                result -= Int(temp)!
            }
            operation = 1
            temp = "0"
        default:
            temp = temp + String(i)
        }
    }
    if operation == 0 {
        result += Int(temp)!
    } else {
        result -= Int(temp)!
    }
    return result
}

func permutation(_ numbers: [Character], _ counter: Int, _ target: Int, _ currentResult: String, _ result: inout [String] ) {
    guard counter < numbers.count else {
        if eval(str: currentResult) == target {
            result.append(currentResult)
        }
        return
    }
    
    if counter != 0 {
        permutation(numbers, counter + 1, target, currentResult + "+" + String(numbers[counter]), &result)
    }
    permutation(numbers, counter + 1, target, currentResult + "-" + String(numbers[counter]), &result)
    permutation(numbers, counter + 1, target, currentResult + String(numbers[counter]), &result)
}

let str = "123456789"
let k = 100
sumToK(str: str, k: k)

