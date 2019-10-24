//
//  UtilityExtensions.swift
//  iOCNotes
//
//  Created by Peter Hedlund on 7/3/19.
//  Copyright © 2019 Peter Hedlund. All rights reserved.
//

import UIKit

extension NSNotification.Name {
    static let deletingNote = NSNotification.Name("DeletingNote")
    static let syncNotes = NSNotification.Name("SyncNotes")
    static let networkSuccess = NSNotification.Name("NetworkSucces")
    static let networkError = NSNotification.Name("NetworkError")
    static let offlineModeChanged = NSNotification.Name("OfflineModeChanged")
}

extension UIImage {
    static func colorResizableImage(color: UIColor) -> UIImage {
        var image = UIImage()
        let rect = CGRect(x: 0, y: 0, width: 3, height: 3)
        UIGraphicsBeginImageContext(rect.size)
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(rect)
            image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
        }
        UIGraphicsEndImageContext()
        image = image.resizableImage(withCapInsets: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        return image
    }
}

extension UIColor {

    static let ph_backgroundColor = UIColor(named: "PHWhiteBackground")!
    static let ph_cellBackgroundColor = UIColor(named: "PHWhiteCellBackground")!
    static let ph_cellSelectionColor = UIColor(named: "PHWhiteCellSelection")!
    static let ph_iconColor = UIColor(named: "PHWhiteIcon")!
    static let ph_textColor = UIColor(named: "PHWhiteText")!
    static let ph_readTextColor = UIColor(named: "PHWhiteReadText")!
    static let ph_linkColor = UIColor(named: "PHWhiteLink")!
    static let ph_popoverBackgroundColor = UIColor(named: "PHWhitePopoverBackground")!
    static let ph_popoverButtonColor = UIColor(named: "PHWhitePopoverButton")!
    static let ph_popoverBorderColor = UIColor(named: "PHWhitePopoverBorder")!
//    static let ph_popoverIconColor = UIColor(named: "PHWhitePopoverIcon")!
    static let ph_switchTintColor = UIColor(named: "PHWhitePopoverBorder")!

}

extension UILabel {

    @objc dynamic var themeColor: UIColor {
        get {
            self.textColor
        }
        set {
            self.textColor = newValue
        }
    }

}