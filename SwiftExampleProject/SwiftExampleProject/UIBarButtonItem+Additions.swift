//
//  CloseButtonitem.swift
//  SwiftExampleProject
//
//  Created by Carnival Mobile
//  Copyright (c) 2015 Carnival Mobile. All rights reserved.
//
//  For documentation see http://docs.carnivalmobile.com
//

import Foundation

internal extension UIBarButtonItem {
    internal class func whiteCloseButton(forTarget target: AnyObject, action: Selector) -> UIBarButtonItem {
        let button = UIButton(frame: CGRect(origin: CGPointZero, size: CGSize(width: 40, height: 40)))
        button.imageEdgeInsets = UIEdgeInsets(top: 11, left: 30, bottom: 11, right: -8)
        button.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        button.setImage(self.closeButtonImage()!, forState: .Normal)
        button.tintColor = UIColor.whiteColor()
        
        return UIBarButtonItem(customView: button)
    }
    
    //MARK: helpers
    private class func closeButtonImage() -> UIImage? {
        return UIImage(named: "cp_close_button_white.png")?.imageWithRenderingMode(.AlwaysTemplate)
    }
}