//
//  Grid.swift
//  Mario Memory Challenge
//
//  Created by Strickland, Keith on 6/4/14.
//  Copyright (c) 2014 Strickland, Keith. All rights reserved.
//

import Foundation

struct GridPoint: Equatable, Hashable {
    var x = 0
    var y = 0
    var hashValue: Int { return (x + y) * (x + y + 1) / 2 + x }
}

func ==(lhs: GridPoint, rhs: GridPoint) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

class Grid<ObjectType> {
    
    var gridMap: Dictionary<GridPoint, ObjectType>
    var nilObject: ObjectType
    
    init(nilObject: ObjectType) {
        self.gridMap = Dictionary<GridPoint, ObjectType>()
        self.nilObject = nilObject
    }
    
    func assignToPoint(point: GridPoint, object: ObjectType) {
        gridMap[point] = object
    }
    
    func removeFromPoint(point: GridPoint) -> ObjectType {
        if let returnVal = gridMap.removeValueForKey(point){
            return returnVal
        } else {
            return nilObject
        }
    }
    
    func objectAtPoint(point: GridPoint) -> ObjectType {
        if let val = gridMap[point]{
            return val
        } else {
            return nilObject
        }
    }
    
    func clear() {
        gridMap.removeAll(keepCapacity: true)
    }
    
}
