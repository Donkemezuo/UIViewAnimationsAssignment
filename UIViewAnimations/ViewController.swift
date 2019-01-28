//
//  ViewController.swift
//  UIViewAnimations
//
//  Created by Donkemezuo Raymond Tariladou on 1/28/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var duckImage: UIImageView!
    
    @IBOutlet weak var playerName: UILabel!
    private var animator: UIViewPropertyAnimator!
    
    @IBOutlet weak var playerImage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setDuckAnimation()
 
    }
    
    func setDuckAnimation(){
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duckImage.transform =  CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        
     animator.fractionComplete = CGFloat(sender.value)
        
    }
    @IBAction func imageTransition(_ sender: UIButton) {
    
        if playerImage.imageView?.image ==  UIImage(named: "LionelMessi") {
            
            UIView.transition(with: playerImage, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.playerImage.setImage(UIImage(named:"ronaldo"), for: .normal)
                self.playerName.text = "Cristiano Ronaldo"
                self.view.backgroundColor = .red
                self.playerName.textColor = .white
            })
            
        } else {
            UIView.transition(with: playerImage, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.playerImage.setImage(UIImage(named: "LionelMessi"), for: .normal)
                self.playerName.text = "Lionel Messi"
                self.playerName.textColor = .red
                self.view.backgroundColor = .white
            })
            
        }
        
        
    }
    

}

