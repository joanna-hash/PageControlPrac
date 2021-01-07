//
//  ViewController.swift
//  pgCtrlMission
//
//  Created by 김가영 on 2021/01/07.
//  Copyright © 2021 김가영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num = [1,2,3,4,5,6,7,8,9,10]

    @IBOutlet var labelNum: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = num.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.black
        labelNum.text = String(num[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        labelNum.text = String(num[pageControl.currentPage])
    }
    
}

