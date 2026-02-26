// https://leetcode.com/problems/number-of-islands/
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var mutableGrid = grid
        var islandsCount = 0
        let rowCount = grid.count
        let columnCount = grid[0].count

        func visit(row: Int, column: Int) {
            guard row >= 0 && column >= 0 && row < rowCount && column < columnCount && mutableGrid[row][column] != "0" else { return }
            mutableGrid[row][column] = "0"
            
            visit(row: row - 1, column: column)
            visit(row: row + 1, column: column)
            visit(row: row, column: column - 1)
            visit(row: row, column: column + 1)
        }

        for row in 0..<rowCount {
            for column in 0..<columnCount {
                guard mutableGrid[row][column] == "1" else { continue }
                islandsCount += 1
                visit(row: row, column: column)
            }
        }

        return islandsCount
    }
}
