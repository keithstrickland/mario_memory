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

struct GameObject {
    var id  = "Mario"
}

class Grid {
   
    var gridMap: Dictionary<GridPoint, GameObject> = [GridPoint(): GameObject()]
    
    init() {
    }
    
    func assignToGridPoint(object: GameObject, point: GridPoint) {
        gridMap[point] = object
     }
    
}
