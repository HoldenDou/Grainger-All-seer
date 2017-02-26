//
//  uploadImage.swift
//  Grainger All-seer
//
//  Created by dwd on 2/25/17.
//  Copyright © 2017 HoldenDou. All rights reserved.
//

import Foundation
import UIKit

class imageChooser {
    let nothing = UIImage(named: "nothing")
    let zero = UIImage(named: "0")
    let one = UIImage(named: "1")
    let two = UIImage(named: "2")
    let three = UIImage(named: "3")
    let zeroOne = UIImage(named: "01")
    let zeroTwo = UIImage(named: "02")
    let zeroThree = UIImage(named: "03")
    let oneTwo = UIImage(named: "12")
    let oneThree = UIImage(named: "13")
    let twoThree = UIImage(named: "23")
    let zeroOneTwo = UIImage(named: "012")
    let zeroOneThree = UIImage(named: "013")
    let zeroTwoThree = UIImage(named: "023")
    let oneTwoThree = UIImage(named: "123")
    let all = UIImage(named: "0123")
    
    func getImgDict() -> [Int: UIImage] {
        return [1: self.nothing!, 2: self.zero!, 3: self.one!, 4: self.two!, 5:self.three!, 6: self.zeroOne!, 7: self.zeroTwo!, 8: self.zeroThree!, 9: self.oneTwo!, 10: self.oneThree!, 11: self.twoThree!, 12: self.zeroOneTwo!, 13: self.zeroOneThree!, 14: self.zeroTwoThree!, 15: self.oneTwoThree!, 16: self.all!]
    }
}
