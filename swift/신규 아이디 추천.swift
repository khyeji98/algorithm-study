// https://school.programmers.co.kr/learn/courses/30/lessons/72410
import Foundation

func solution(_ new_id:String) -> String {
    var recommend_id = ""
    
    recommend_id = new_id.lowercased()
    
    recommend_id = recommend_id.filter { $0.isLowercase || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    while recommend_id.contains("..") {
        recommend_id = recommend_id.replacingOccurrences(of: "..", with: ".")
    }
    
    if recommend_id.hasPrefix(".") || recommend_id.hasSuffix(".") {
        recommend_id = recommend_id.trimmingCharacters(in: CharacterSet(charactersIn: "."))
    }
    
    if recommend_id.isEmpty {
        recommend_id = "a"
    }
    
    let id_count = recommend_id.count
    if id_count >= 16 {
        recommend_id = String(recommend_id.prefix(15))
        
        if recommend_id.hasPrefix(".") || recommend_id.hasSuffix(".") {
            recommend_id = recommend_id.trimmingCharacters(in: CharacterSet(charactersIn: "."))
        }
    } else if id_count <= 2 {
      recommend_id += String(repeating: recommend_id.last!, count: 3 - id_count)  
    }
    
    return recommend_id
}
