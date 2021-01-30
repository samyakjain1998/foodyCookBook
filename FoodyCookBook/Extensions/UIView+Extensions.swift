//
//  UIView+Extensions.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    
    
}

@IBDesignable extension UIView {
    
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.cgColor }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
    }
    
}

import MBProgressHUD

extension UIView {
    
    func showIndicator(_ title: String? = "Please wait.", _ description: String? = nil, _ userInteraction: Bool = false) {
        let indicator = MBProgressHUD.showAdded(to: self, animated: true)
        indicator.label.text = title
        indicator.isUserInteractionEnabled = userInteraction
        indicator.detailsLabel.text = description
        indicator.show(animated: true)
    }
    
    func hideIndicator() {
        MBProgressHUD.hide(for: self, animated: true)
    }
    
}
