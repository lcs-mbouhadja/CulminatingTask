//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
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

func turtleToMiddleOfCanvas() {
    turtle.penUp()
    turtle.forward(steps : canvas . width / 2)
    
    turtle.left(by : 90)
    turtle.penUp()
    turtle.forward(steps: canvas.width / 2)
    
    turtle.right(by: 90)
    
    let squareSize = 10

    func drawArrow(){

        turtle.drawSelf()

         

        // Instructions to draw arrow

        turtle.penDown()

        turtle.forward(steps: squareSize * 7)

        

        turtle.right(by: 90)

        turtle.forward(steps: squareSize * 2)

        turtle.left(by: 135)

        turtle.forward(steps: squareSize * 4)

        turtle.left(by: 90)

        turtle.forward(steps: squareSize * 4 )

        turtle.left(by: 135)

        turtle.forward(steps: squareSize * 2)

        turtle.right(by: 90)

        turtle.forward(steps: squareSize * 7)

        turtle.left(by: 90)

        turtle.forward(steps: squareSize * 2)
    
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
    }
