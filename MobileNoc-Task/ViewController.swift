//
//  ViewController.swift
//  MobileNoc-Task
//
//  Created by karim metawea on 12/14/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var gradientprogress: GradientProgressBar!
    
    @IBOutlet weak var stepIndicatorView: StepIndicatorView!
    
    @IBOutlet weak var secondStepLabel: UILabel!
    @IBOutlet weak var firstSteplabel: UILabel!
    @IBOutlet weak var containingView: UIView!
    @IBOutlet weak var dropdownButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        setupProgressbar()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        containingView.makeRoundeEdges()
        containingView.makeBoreder(width: 0.5, color: .lightGray)
        dropdownButton.makeRoundeEdges()
    }
    fileprivate func setupProgressbar() {
        gradientprogress.gradientColors = [UIColor.mainColor.cgColor,UIColor.mainColor.cgColor,UIColor.mainColor.cgColor,UIColor.darkColor.cgColor]
           gradientprogress.progress = 0.25
           gradientprogress.trackTintColor = .white
       }


}

