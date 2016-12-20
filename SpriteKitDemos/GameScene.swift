//
//  GameScene.swift
//  SpriteKitDemos
//
//  Created by Russell Gordon on 12/20/16.
//  Copyright © 2016 Russell Gordon. All rights reserved.
//

import SpriteKit

class PrimaryScene: SKScene {
    
    // This runs once to set up the scene
    override func didMove(to view: SKView) {
        
        // Set the background colour
        self.backgroundColor = SKColor.black
        
    }
    
    // This runs before each frame is rendered
    // Avoid putting computationally intense code in this function to maintain high performance
    override func update(_ currentTime: TimeInterval) {
        
    }

}
