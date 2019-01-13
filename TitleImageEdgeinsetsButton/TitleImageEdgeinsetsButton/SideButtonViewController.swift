//
//  SideButtonViewController.swift
//  TitleImageEdgeinsetsButton
//
//  Created by chunxi on 2019/1/12.
//  Copyright © 2019 chunxi. All rights reserved.
//

import UIKit

class SideButtonViewController: UIViewController {

    @IBOutlet weak var imageLeftSideButton: CXSideButton!
    @IBOutlet weak var imageRightSideButton: CXSideButton!
    @IBOutlet weak var imageTopSideButton: CXSideButton!
    @IBOutlet weak var imageBottomSideButton: CXSideButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imageSideButtonAction(_ sender: CXSideButton) {
        switch sender {
        case imageLeftSideButton:
            sender.imageSideAlignment =  .left(randomValue(), titleRight: randomValue())
        case imageRightSideButton:
            sender.imageSideAlignment = .right(randomValue(), titleLeft: randomValue())
        case imageTopSideButton:
            sender.imageSideAlignment = .top(randomValue(), titleBottom: randomValue())
        case imageBottomSideButton:
            sender.imageSideAlignment = .bottom(randomValue(), titleTop: randomValue())
        default:
            break
        }
        
        if let sideAlignment = sender.imageSideAlignment {
            switch sideAlignment {
            case .left(let imageLeft, let titleRight):
                print("left:\(imageLeft), titleRight:\(titleRight) ")
            case .right(let imageRight, let titleLeft):
                print("right:\(imageRight), titleLeft:\(titleLeft) ")
            case .top(let imageTop, let titleBottom):
                print("top:\(imageTop), titleBottom:\(titleBottom) ")
            case .bottom(let imageBottom, let titleTop):
                print("bottom:\(imageBottom), titleTop:\(titleTop) ")
            }
        }
    }
    
    func randomValue() -> CGFloat {
       return CGFloat.random(in: 0...20)
    }

}
