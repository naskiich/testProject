import Foundation

//This program is to determanate where pizzaBot should deliver the pizza with given points respectedly every point is a household that pizzaBot needs to reach. Respectedly the directions are given with N -> North, W -> West, E -> East, S -> South and D -> Drop.
struct Point {
    let x: Int
    let y: Int

    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }

    func compareAndReturnDirection(currentX: Int, currentY: Int) -> [(String, Int)] {
        if currentX != self.x, currentY != self.y  {
            var list = [(String, Int)]()
            list.append((self.x - currentX > 0 ? "E" : "W", self.x - currentX))
            list.append((self.y - currentY > 0 ? "N" : "S", self.y - currentY))
            return list

        } else if self.x == currentX && self.y != currentY {
            return [(self.y - currentY > 0 ? "N" : "S", self.y - currentY)]

        } else if self.x != currentX && self.y == currentY {
            return [(self.x - currentX > 0 ? "E" : "W", self.x - currentX)]
        }
        return [(String, Int)]()
    }

}

struct PizzaSliceAlgorithm {
    static func printPath(array: [Point]) -> String {
        var currentX = 0
        var currentY = 0
        var stringToPrint = ""

        for point in array {
            point.compareAndReturnDirection(currentX: currentX, currentY: currentY).forEach { (arg0) in
                let (directionSign, cycleCounter) = arg0
                for _ in 1...abs(cycleCounter) {
                    stringToPrint = "\(stringToPrint)\(directionSign)"
                }
            }

            stringToPrint = "\(stringToPrint)D"

            currentX = point.x
            currentY = point.y
        }

        return stringToPrint
    }

}
