import UIKit

//O(n*m) space, O(n*m) time
func getMaxFromMinPath(matr: [[Int]], n: Int, m: Int) -> Int {
    var matrix: [[Int]] = []
    matrix.append(Array(repeating: Int.min, count: m + 1))
    for i in 0..<n {
        var tempArray : [Int] = []
        tempArray.append(Int.max)
        tempArray.append(contentsOf: matr[i])
        matrix.append(tempArray)
    }
    for i in 1..<matrix.count{
        for j in 1..<matrix[0].count{
            matrix[i][j] = max(matrix[i][j], min(matrix[i-1][j], matrix[i][j-1]))
        }
    }
    
    return matrix[n][m]
}

//O(n) space, O(n*m) time
func getMaxFromMinPathO1(matr: [[Int]], n: Int, m: Int) -> Int {
    var row = Array(repeating: Int.min, count: m + 1)
    row[0] = Int.max
    
    for i in 0..<matr.count {
        for j in 1..<matr[i].count+1{
            row[j] = max(matr[i][j-1], min(row[j], row[j-1]))
        }
    }
    
    return row[row.count - 1]
}

var matrix = [[1, 1, 1, 5], [1, 1, 4, 1], [5, 5, 3, 1], [1, 1, 1, 1]]
getMaxFromMinPathO1(matr: matrix, n: 4, m: 4)
