// https://school.programmers.co.kr/learn/courses/30/lessons/72410
import Foundation

func solution(_ new_id:String) -> String {
    var recommended: String = ""
    for (index, char) in new_id.enumerated() {
        switch String(char) {
            case "0"..."9", "a"..."z", "-", "_":
                recommended.append(char)
            case "A"..."Z":
                recommended.append(char.lowercased())
            case ".":
                guard index != 0 && index != (new_id.count - 1) && !recommended.isEmpty && recommended.last != "." else {
                    continue
                }
                recommended.append(char)
            default:
                continue
        }
    }
    if recommended.isEmpty {
        recommended = "a"
    }
    if recommended.count >= 16 {
        recommended = String(recommended.prefix(15))
    }
    if recommended.last! == "." {
        recommended.removeLast()
    }
    if recommended.count <= 2 {
        recommended += String(repeating: recommended.last!, count: 3 - recommended.count)
    }
    return recommended
}
