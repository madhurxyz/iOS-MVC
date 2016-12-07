
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 200, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor
/*:
 **Task**: Add a `UIView` to the `canvas` that is half as wide and half as high as the `canvas`. This new `UIView` should be _centered_ on the canvas:
 
 ![Challenge 1](./challenge1.png "Challenge 1")

 1. Implement above task by setting the view's `frame` directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//Implementation 1.0
//let redViewFrame = CGRect(x: 50, y: 50, width: 100, height: 100)
//let redView = UIView(frame: redViewFrame)
//redView.backgroundColor = .red
//canvas.addSubview(redView)

//Implementation 1.1
let redWidth = canvas.frame.width * 0.5
let redHeight = canvas.frame.height * 0.5
let redX = redWidth * 0.5
let redY = redHeight * 0.5

let redViewFrame = CGRect(x: redX, y: redY, width: redWidth, height: redHeight)
let redView = UIView(frame: redViewFrame)
redView.backgroundColor = .red

canvas.addSubview(redView)
