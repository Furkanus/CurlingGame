//
//  GameScene.swift
//  Curling
//
//  Created by Furkan Hanci on 8/30/20.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene ,  SKPhysicsContactDelegate {
    
    
   
    var ball = SKSpriteNode()
    var dx : Int =   -800
    var dy : Int = 800
    var gameStarted = false
    var particleisBeggin = true
    let particle = SKEmitterNode(fileNamed: "Particle.sks")
    override func didMove(to view: SKView) {
        
       
        
        ball = childNode(withName: "ball") as! SKSpriteNode
        
        let ballTexture = SKTexture(imageNamed: "ball")
        
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ballTexture.size().height / 10)
        ball.physicsBody?.affectedByGravity = false
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.mass = 0.1
            particle?.position = ball.position
        
        
        
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        ball.physicsBody?.applyForce(CGVector(dx: 0, dy: 200))
        
       
        if particleisBeggin {
            addChild(particle!)
        }
       
           
        
       
        
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
       
        
    }
    
    
}






    
 

