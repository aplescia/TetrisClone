//
//  GameViewController.swift
//  TetrisClone
//
//  Created by Anthony Plescia on 2015-01-12.
//  Copyright (c) 2015 Anthony Plescia. All rights reserved.
//

import UIKit
import SpriteKit



class GameViewController: UIViewController {
    
    //declare scene as optional to be instantiated later
    var scene : GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //present scene to user
        skView.presentScene(scene)

    }

    

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
