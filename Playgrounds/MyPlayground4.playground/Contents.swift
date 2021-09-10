import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Float {
    get {
        let wallSurface = width * height
        return ceilf(wallSurface / 1.5)
    }
    set {
        let areaBucketsCover = newValue * 1.5
        print("\(areaBucketsCover) area covered")
    }
}

bucketsOfPaint = 5


