//
//  Utils.swift
//  Typing
//
//  Created by wangyunwen on 18/3/31.
//  Copyright © 2018年 YunwenWang. All rights reserved.
//

import Foundation
import UIKit


func ifShowNewLetter(percentage: Int) -> Bool {
    let temp = getRandomNum(length: 100)
    if(temp > percentage) {
        return false
    } else {
        return true
    }
}

func getRandomNum(length:Int) -> Int {
    return Int(arc4random_uniform(UInt32(length)))
}

func getRandomFrame(frame: CGRect, width: CGFloat) -> CGRect {
    let frameWidth = frame.width
    let frameHeight = frame.height
    
    let newX:CGFloat = (frameWidth - width) * CGFloat(Float(getRandomNum(length: 100)) / 100.0)
    let newY:CGFloat = (frameHeight - width) * CGFloat(Float(getRandomNum(length: 100)) / 100.0)
    
    return CGRect(x: newX, y: newY, width: width, height: width)
}

func isOverlap(frameA: CGRect, frameB: CGRect) -> Bool {
    if ((frameA.height - frameB.height) < frameA.height) {
        return false
    }
    if ((frameA.width - frameB.width) < frameA.width) {
        return false
    }

    if ((frameB.height - frameA.height) < frameB.height) {
        return false
    }
    if ((frameB.width - frameA.width) < frameA.width) {
        return false
    }
    
    return true
}
