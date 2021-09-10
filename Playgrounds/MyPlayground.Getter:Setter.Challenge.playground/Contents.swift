import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Float {
    get {
        let wallSurface = width * height
        
        return wallSurface / 1.5
    }
}

print(bucketsOfPaint)


