import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    
    let canvas : Canvas
    
    // Position of circle
    
    var x : Int
    
    var offset : Int
    
    // Define Circles
    
    let black = Color.black
    
    let blue = Color.blue
    
    let green = Color.green
    
    let orange = Color.orange
    
    let purple = Color.purple
    
    
    var drawShapesWithBorders = false
    
    // Function - 1
    
    override init() {
        
        // Find value of canvas object
        
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        
        x = 250
        
        offset = 250
        
    }
    
    // Draw Animated Run Function

func draw() {
        
        canvas.drawShapesWithBorders = false
        
        //Forward Circles var = x
        
        for n in 0...2{
            
            x += 1
            
            //Colors
            
            if n == 0{
                canvas.fillColor = black
                
            } else if n == 1{
                
                canvas.fillColor = green
                
            } else if n == 2{
                
                canvas.fillColor = purple
                
            }
                
            // Draw Ellipse in Center
            
            canvas.drawEllipse(at: Point(x: x, y: 83 + 166 * n), width: 50, height: 50)
            
        }
        
        //Reverse Circles var = reverse
        
        for n in 0...1{
            
            offset += -1
            
            //Colors
            
            if n == 0{
                
                canvas.fillColor = blue
                
            } else if n == 1{
                
                canvas.fillColor = orange
                
            }
            
            // Draw Circle at Center
            
            canvas.drawEllipse(at: Point(x: offset, y: 166 + 166 * n), width: 50, height: 50)
            
        }
        
    }
    
}
