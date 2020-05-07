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
    
}
