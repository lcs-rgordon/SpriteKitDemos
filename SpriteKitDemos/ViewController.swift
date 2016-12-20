//
//  ViewController.swift
//  SpriteKitDemos
//
//  Created by Russell Gordon on 12/20/16.
//  Copyright © 2016 Russell Gordon. All rights reserved.
//

import Cocoa
import SpriteKit

class ViewController: NSViewController {

    // MARK: Properties
    @IBOutlet var skView: SKView!
    
    // MARK: View controller methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a scene based on the PrimaryScene class
        // Make the size of the scene the same as that defined on the storyboard
        let scene = PrimaryScene(size: skView.frame.size)
        
        // Obtain a reference to the view
        if let view = self.skView {

            // Make sure a frames per second info text field will be shown
            view.showsFPS = true
            
            // Keep track of how many nodes (visual elements) are on screen
            // (The fewer nodes the better for performance reasons)
            view.showsNodeCount = true
            
            // I will explain this option later.
            view.ignoresSiblingOrder = true
            
            // Scene will expand if necessary to fill device screen.
            scene.scaleMode = .aspectFill
            
            // Make the view show the scene we have configured
            skView.presentScene(scene)

        }
    }
}


