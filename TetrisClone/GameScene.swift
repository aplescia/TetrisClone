//
//  GameScene.swift
//  TetrisClone
//
//  Created by Anthony Plescia on 2015-01-12.
//  Copyright (c) 2015 Anthony Plescia. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = NSTimeInterval(600)


class GameScene: SKScene {
    var tick:(() -> ())?
    var tickLengthMilli = TickLengthLevelOne
    var lastTick:NSDate?
    
    required init(coder aDecoder: NSCoder){
        fatalError("NSCoder not supported")
    }
    
    override init (size: CGSize){
    super.init(size: size)
    
    
    anchorPoint = CGPoint(x: 0, y: 1.0)
        
    //handles background positioning
    let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y:0)
        background.anchorPoint = CGPoint(x:0, y:0)
        addChild(background)
    
    }
        override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
            if lastTick==nil{
                return
            }
            var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
            if timePassed > tickLengthMilli{
                lastTick = NSDate()
                tick?()
            }
            
            func startTicking(){
                lastTick = NSDate()
            }
            
            func stopTicking() {
                lastTick = nil
            }
    }
}
