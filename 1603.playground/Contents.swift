import UIKit


class ParkingSystem {
    var big:Int
    var medium:Int
    var small:Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        switch carType {
            case 3 :
                self.small -= 1
                if (self.small >= 0) {
                    return true
                } else {
                    self.small = 0
                    return false
                }
            case 2 :
                self.medium -= 1
                if (self.medium >= 0) {
                    return true
                } else {
                    self.medium = 0
                    return false
                }
            case 1 :
                self.big -= 1
                if (self.big >= 0) {
                    return true
                } else {
                    self.big = 0
                    return false
                }
            default :
                return false
        }
    }    
}



/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */
