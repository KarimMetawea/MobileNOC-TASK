//
//  UIViewExtension .swift
//  MobileNoc-Task
//
//  Created by karim metawea on 12/14/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import Foundation
import UIKit

    extension UIView {
        func makeRoundeEdges(){
            
            self.layer.cornerRadius = self.frame.height/2
            self.clipsToBounds = true
        }
        
        func makeBoreder(width:CGFloat , color:UIColor){
            self.layer.borderWidth = width
            self.layer.borderColor = color.cgColor
        }
        
        
        
        
    }
