// https://school.programmers.co.kr/learn/courses/30/lessons/42586
import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let featureCount: Int = progresses.count
    var days: [Int] = Array(repeating: 0, count: featureCount)
    var releases: [Int] = []
    
    for i in 0..<featureCount {
        let remains = 100 - progresses[i]
        let day = Int(ceil(Double(remains)/Double(speeds[i])))
        days[i] = day
        
        if i > 0 && days[i-releases.last!] >= day {
            releases[releases.count-1] += 1
        } else {
            releases.append(1)
        }
    }
    
    return releases
}
