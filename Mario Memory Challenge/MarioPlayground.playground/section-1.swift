// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct GridPoint: Equatable, Hashable {
    var x = 0
    var y = 0
    var hashValue: Int { return (x + y) * (x + y + 1) / 2 + x }
}

func ==(lhs: GridPoint, rhs: GridPoint) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

let gp = GridPoint(x: 1, y: 11)
gp.hashValue

let gp2 = GridPoint(x: 11, y: 1)
gp2.hashValue

let gp3 = GridPoint()
gp3.hashValue

let gp4 = GridPoint(x: 32, y: 32)
gp4.hashValue

struct GameObject {
    var id  = "Mario"
}

let nilGameObject = GameObject(id: "nilObject")

class Grid {
    
    var gridMap: Dictionary<GridPoint, GameObject> = [GridPoint(): GameObject()]
    
    init() {
    }
    
    func assignToGridPoint(object: GameObject, point: GridPoint) {
        gridMap[point] = object
    }
    
    func removeFromGridPoint(point: GridPoint) -> GameObject {
        if let returnVal = gridMap.removeValueForKey(point){
            return returnVal
        } else {
            return nilGameObject
        }
    }
    
    func objectAtGridPoint(point: GridPoint) -> GameObject {
        if let val = gridMap[point]{
            return val
        } else {
            return nilGameObject
        }
    }
    
    func clear() {
        gridMap.removeAll(keepCapacity: true)
    }
    
}

let grid = Grid()
grid.assignToGridPoint(GameObject(), point: gp4)
grid.assignToGridPoint(GameObject(id: "Luigi"), point: gp3)

let obj  = grid.objectAtGridPoint(gp4)
let obj2 = grid.objectAtGridPoint(gp3)

let obj3 = grid.objectAtGridPoint(gp)
let obj4 = grid.objectAtGridPoint(gp2)

let objr2 = grid.removeFromGridPoint(gp4)
let objr  = grid.removeFromGridPoint(gp2)



















