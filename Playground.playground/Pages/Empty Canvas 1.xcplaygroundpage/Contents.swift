//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = 500
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
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Replace this comment with your first comment – what is the goal of the code you're about to write?

func turtleToMiddleOfCanvas() {
    turtle.penUp()
    turtle.forward(steps : canvas . width / 2)
    
    turtle.left(by : 90)
    turtle.penUp()
    turtle.forward(steps: canvas.width / 2)
    
    turtle.left(by: 90)
    // Where is the turtile?

        
}




func drawArrow(){

//turtle.drawSelf()

     

    // Instructions to draw arrow

    turtle.penDown()

    turtle.forward(steps: squareSize * 5)

    turtle.right(by: 90)

    turtle.forward(steps: squareSize * 1)

    turtle.left(by: 135)

    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))

    turtle.left(by: 90)

    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))

    turtle.left(by: 135)

    turtle.forward(steps: squareSize * 1)

    turtle.right(by: 90)

    turtle.forward(steps: squareSize * 5)

    turtle.left(by: 90)
    turtle.forward(steps: squareSize * 2)
    

}

// This gets the turtle at the left side of a row, ready to draw a new one
func beginNewrow() {
    
    turtle.penUp()
    
    // Turn to the up, and move above current row
    turtle.left(by: 90)
    turtle.forward(steps: 4 * squareSize)
    
    // Turn to the left, and go back to get on left side of screen
    turtle.left(by: 90)
    turtle.forward(steps: 7 * 7 * squareSize)
    
    // Turn to the right, to point in the direction for a new row
    turtle.right(by: 180)
    turtle.penDown()
    

}

//This is where my sketch begins.
let squareSize = 10




//Whole sheet
canvas.highPerformance = true

for _ in 1...13 {
    
    // Draw a row of arrows
    for _ in 1...7
{
        drawArrow()
        turtle.left(by: 90)
        turtle.penUp()
        turtle.forward(steps: 7 *  squareSize )
        

    }
   

    beginNewrow()
    turtle.drawSelf()
    
}
canvas.highPerformance = false





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

