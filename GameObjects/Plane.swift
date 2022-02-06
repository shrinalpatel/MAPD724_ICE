//
//  Plane.swift
//  MAPD724_ICE
//
//  Created by Shrinal Patel on 31/01/22.
//

import GameplayKit
import SpriteKit

class Plane : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        // constraint on the left boundary
        if(position.x <= -310)
        {
            position.x = -310
        }
        
        // constraint on the right boundary
        if(position.x >= 310)
        {
            position.x = 310
        }
    }
    
    // Initialization
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
