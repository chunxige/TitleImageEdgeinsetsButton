//
//  ViewController.swift
//  TitleImageEdgeinsetsButton
//
//  Created by chunxi on 2019/1/10.
//  Copyright © 2019 chunxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageLeftButton: CXSpacingButton!
    @IBOutlet weak var imageRightButton: CXSpacingButton!
    @IBOutlet weak var imageTopButton: CXSpacingButton!
    @IBOutlet weak var imageBottomButton: CXSpacingButton!
    
    @IBOutlet weak var horizonSeg: UISegmentedControl!
    @IBOutlet weak var verticalSeg: UISegmentedControl!
    var currentSelectButton: CXSpacingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageLeftButton.imagePosition = .left
        self.imageRightButton.imagePosition = .right
        self.imageTopButton.imagePosition = .top
        self.imageBottomButton.imagePosition = .bottom
        
        currentSelectButton = imageLeftButton
    }

    @IBAction func buttonActions(_ sender: CXSpacingButton) {
        sender.spacing += 1
        sender.setNeedsLayout()
        
        currentSelectButton = sender
        
        horizonSeg.selectedSegmentIndex = segSelectIndexWithHorizon(sender.contentHorizontalAlignment)
        verticalSeg.selectedSegmentIndex = segSelectIndexWithVertical(sender.contentVerticalAlignment)
    }
    
    @IBAction func contentHorizonSegmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currentSelectButton.contentHorizontalAlignment = .left
        case 1:
            currentSelectButton.contentHorizontalAlignment = .center
        case 2:
            currentSelectButton.contentHorizontalAlignment = .right
        default:
            break
        }
        currentSelectButton.setNeedsLayout()
    }
    @IBAction func contentVerticalSegmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currentSelectButton.contentVerticalAlignment = .top
        case 1:
            currentSelectButton.contentVerticalAlignment = .center
        case 2:
            currentSelectButton.contentVerticalAlignment = .bottom
        default:
            break
        }
        currentSelectButton.setNeedsLayout()
    }
    
    func segSelectIndexWithHorizon(_ horizonContent: UIControl.ContentHorizontalAlignment) -> Int {
        switch horizonContent {
        case .center:
            return 1
        case .left:
            return 0
        case .right:
            return 2
        default:
            return 1
        }
    }
    
    func segSelectIndexWithVertical(_ verticalContent: UIControl.ContentVerticalAlignment) -> Int {
        switch verticalContent {
        case .center:
            return 1
        case .top:
            return 0
        case .bottom:
            return 2
        default:
            return 1
        }
    }
    
}

