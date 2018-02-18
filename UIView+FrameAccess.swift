//
//  UIView+FrameAccess.swift
//  FrameAccess
//
//  Created by 野瀬田裕樹 on 2018/02/12.
//  Copyright © 2018年 野瀬田裕樹. All rights reserved.
//

import UIKit

extension UIView {
    var viewOrigin: CGPoint {
        get { return frame.origin }
        set { frame.origin = newValue }
    }
    
    var viewSize: CGSize {
        get { return frame.size }
        set { frame.size = newValue }
    }
    
    var x: CGFloat {
        get { return frame.origin.x }
        set { frame.origin = CGPoint(x: newValue, y: frame.origin.y) }
    }
    
    var right: CGFloat {
        get { return frame.origin.x + frame.size.width }
        set { frame.origin = CGPoint(x: newValue - frame.size.width, y: frame.origin.y) }
    }
    
    var y: CGFloat {
        get { return frame.origin.y }
        set { frame.origin = CGPoint(x: frame.origin.x, y: newValue) }
    }
    
    var bottom: CGFloat {
        get { return frame.origin.y + frame.size.height }
        set { frame.origin = CGPoint(x: frame.origin.x, y: newValue - frame.size.height) }
    }
    
    var width: CGFloat {
        get { return frame.size.width }
        set { frame.size = CGSize(width: newValue, height: frame.size.width) }
    }
    
    var height: CGFloat {
        get { return frame.size.height }
        set { frame.size = CGSize(width: frame.size.height, height: newValue) }
    }
    
    var centerX: CGFloat {
        get { return center.x }
        set { center = CGPoint(x: newValue, y: center.y) }
    }
    
    var centerY: CGFloat {
        get { return center.y }
        set { center = CGPoint(x: center.x, y: newValue) }
    }
}
