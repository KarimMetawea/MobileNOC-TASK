//
//  UItextfieldExtension.swift
//  MobileNoc-Task
//
//  Created by karim metawea on 12/14/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    enum IconDirection {
        case left, right
    }
    
    func setIcon(direction: IconDirection, image: UIImage?, width: CGFloat, height: CGFloat) {
           let view = UIView(frame: CGRect(x: 0, y: 0, width: width + 10, height: height))
           
           let imageView = UIImageView(image: image)
           imageView.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(imageView)
           NSLayoutConstraint.activate([
               imageView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: direction == .left ? 6 : -10),
               imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
               imageView.widthAnchor.constraint(equalToConstant: width),
               imageView.heightAnchor.constraint(equalToConstant: height)
           ])
           
           if direction == .left {
               leftView = view
               leftViewMode = .always
           } else {
               rightView = view
               rightViewMode = .always
           }
       }
}
