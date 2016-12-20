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
/*:
 ## Physics bodies
"The circle body is a **dynamic** physics body — that is, it moves. It’s solid, has mass and can collide with any other type of physics body. The physics simulation can apply various forces to move volume-based bodies."

 "The edge loop body is a **static** volume-less physics body — that is, it does not move. As the name implies, an edge loop only defines the edges of a shape. It doesn’t have mass, cannot collide with other edge loop bodies and is never moved by the physics simulation. Other objects can be inside or outside its edges."
 
 "The most common use for an edge loop body is to define collision areas to describe your game’s boundaries, ground, walls, trigger areas or any other type of unmoving collision space."
 
 ![example](types-of-physics-bodies.png "Types of physics bodies")
*/
// Set physics body for the circle based on its radius
circle.physicsBody = SKPhysicsBody(circleOfRadius: circle.size.width / 2)

// Set physics body for the square based on its existing dimensions (frame size)
square.physicsBody = SKPhysicsBody(rectangleOf: square.frame.size)

// There is no easy way to make a physics body for a triangle, so we make a custom path to do this
let trianglePath = CGMutablePath()
trianglePath.move(to: CGPoint(x: -triangle.size.width/2,
                              y: -triangle.size.height/2))
trianglePath.addLine(to: CGPoint(x: triangle.size.width/2,
                                 y: -triangle.size.height/2))
trianglePath.addLine(to: CGPoint(x: 0, y: triangle.size.height/2))
trianglePath.addLine(to: CGPoint(x: -triangle.size.width/2,
                                 y: -triangle.size.height/2))
triangle.physicsBody = SKPhysicsBody(polygonFrom: trianglePath)
/*:
    Try uncommenting the line below the "Make an edge loop at the boundaries of the scene" comment.
 
    What happens to the circle now?
 */
// Make an edge loop at the boundaries of the scene
scene.physicsBody = SKPhysicsBody(edgeLoopFrom: scene.frame)

// Create the view
let view = SKView(frame: frame)
view.showsFPS = true
view.showsNodeCount = true

// Present the scene we just configured
view.presentScene(scene)

// Show the view in the live view area at right
PlaygroundPage.current.liveView = view
