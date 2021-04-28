//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 450
let preferredHeight = 550
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw a boundary for the tesselation
// Aim to get the tesselation roughly within this boundary
// NOTE: Please not remove the code below, from lines 31 to 35
canvas.defaultBorderWidth = 5
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: 0, saturation: 25, brightness: 0, alpha: 25)
canvas.drawRectangle(at: Point(x: 25, y: 75), width: 400, height: 400)

canvas.defaultBorderWidth = 1
canvas.drawShapesWithFill = true



/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// My first tesselation
// TEACHES the turtle how to go to the middle of the canvas




let squareSize = 10

// Moves the turtle to the bottom left of the area to draw in
func moveToDrawingStartPosition() {
    turtle.penUp()
    turtle.goToHome()
    turtle.forward(steps: 25)
    turtle.left(by: 90)
    turtle.forward(steps: 75)
    turtle.right(by: 90)
}


func drawplus(){
    
    // Where is the turtile?
  
    turtle.penUp()
    turtle.forward(steps: squareSize * 2)
    turtle.penDown()
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.right(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.right(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.right(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.right(by: 90)
    turtle.forward(steps: squareSize * 2)
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 4)
    turtle.penDown()
    
    
}
    
    
   
                        
// START of your drawing}
moveToDrawingStartPosition()
drawplus()
turtle.drawSelf()

for _ in 1...4 {
drawplus()
}

      
    



    
    


// ASK the turtle actually go to the middle of the canvas

    
    






/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
