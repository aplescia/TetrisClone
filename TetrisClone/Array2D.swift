//
//  Array2D.swift
//  TetrisClone
//
//  Created by Anthony Plescia on 2015-01-12.
//  Copyright (c) 2015 Anthony Plescia. All rights reserved.
//


class Array2D<T>{
    let columns : Int
    let rows : Int
    
    //optional declaration
    var array : Array<T?>
    
    init (columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get{
            
            return array[(rows*columns) + column]
            
        }
        set(newValue){
            array[(rows*columns) + column] = newValue

        }
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
