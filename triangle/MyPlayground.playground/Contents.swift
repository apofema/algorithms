import Foundation

/*
 * Complete the function below.
 */
func triangleOrNot(a: [Int], b: [Int], c: [Int]) -> [String] {
    var result: [String] = []
    for i in 0..<a.count {
        if a[i] + b[i] > c[i] && a[i] + c[i] > b[i] && b[i] + c[i] > a[i]{
            result.append("Yes")
        } else {
            result.append("No")
        }
    }
    return result
}

triangleOrNot(a: [7, 10, 7], b: [2, 3, 4], c: [2, 7, 4])
