//
//  TShape.swift
//  TetrisClone
//
//  Created by Anthony Plescia on 2015-01-13.
//  Copyright (c) 2015 Anthony Plescia. All rights reserved.
//

class TShape:Shape{
    
    
    /*Marks the ROW/COLUMN difference of each block. i,e top right is (0,0) bottom right is (0, 1) [difference of 0 in x, 1 in y, and so on*/
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (0,1), (1,1), (2,1)],
            Orientation.OneEighty: [(1,2), (0,1), (1,1), (2,1)],
            Orientation.Ninety: [(2, 1), (1, 0), (1, 1), (1, 2)],
            Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}

    
    
    