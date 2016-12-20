import SpriteKit
import PlaygroundSupport

// Define the size of the animation
let frame = CGRect(x: 0, y: 0, width: 400, height: 320)

// Set the midpoint of the scene
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

// Create the scene
var scene = SKScene(size: frame.size)

// Set scene background colour
scene.backgroundColor

// Make sprite objects for various shapes
let square = SKSpriteNode(imageNamed: "square")
square.name = "shape"
square.position = CGPoint(x: scene.size.width * 0.25,
                          y: scene.size.height * 0.50)
let circle = SKSpriteNode(imageNamed: "circle")
circle.name = "shape"
circle.position = CGPoint(x: scene.size.width * 0.50,
                          y: scene.size.height * 0.50)
let triangle = SKSpriteNode(imageNamed: "triangle")
triangle.name = "shape"
triangle.position = CGPoint(x: scene.size.width * 0.75,
                            y: scene.size.height * 0.50)

// Add the sprites to the scene
scene.addChild(square)
scene.addChild(circle)
scene.addChild(triangle)

// Define physics bodies
circle.physicsBody = SKPhysicsBody(circleOfRadius: circle.size.width / 2)

// Create the view
let view = SKView(frame: frame)
view.showsFPS = true
view.showsNodeCount = true

// Present the scene we just configured
view.presentScene(scene)

// Show the view in the live view area at right
PlaygroundPage.current.liveView = view
