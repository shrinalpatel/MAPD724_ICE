//
//  GameProtocol.swift
//  MAPD724_ICE
//
//  Created by Shrinal Patel on 31/01/22.
//

protocol GameProtocol
{
    // Prevent an object from leaving the screen or detect that it has done so
    func CheckBounds()
    
    // Reset our GameObject offscreen
    func Reset()
    
    // Initialize properties of our Game Objects
    func Start()
    
    // Update will be called every Frame (60 times per second) = 16.666ms
    func Update()
}
