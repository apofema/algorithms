func doesCircleExist(commands: [String]) -> [String] {
    return commands.map { checkCommand(command: $0) }
}

func checkCommand(command: String) -> String {
    var x = 0
    var y = 0
    var direction = 1 // 1 - going forward, 2 - going right, 3 - going left, 4 - going backwards
    let commands = Array(command)
    for i in 0..<5 {
        for j in 0..<commands.count {
            if commands[j] == "R" {
                direction = (direction + 1) % 4
            } else if commands[j] == "L" {
                direction = (direction - 1)
                if direction == 0 { direction = 4}
            } else if commands[j] == "G" {
                switch direction {
                case 1:
                    y += 1
                case 2:
                    x += 1
                case 3:
                    x -= 1
                default:
                    y -= 1
                }
            }
            
        }
        
        if i != 0 && x == 0 && y == 0 {
            return "YES"
        }
    }
    
    return "NO"
}

doesCircleExist(commands: ["G", "L"])
