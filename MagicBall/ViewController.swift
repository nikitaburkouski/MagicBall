//
//  ViewController.swift
//  MagicBall
//
//  Created by Nikita on 2/12/21.
//

import UIKit

class ViewController: UIViewController {
    let images = ["8-Ball NO", "8-Ball Yes"]
    
    
    @IBOutlet weak var Prediction: UIButton!
    
    @IBAction func tappedButton(_ sender: Any) {
        self.Prediction.setImage(UIImage(named: "8-Ball"), for: .normal)
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 1, options: .autoreverse, animations: {self.Prediction.center.x+=8}, completion:
{
_ in
    UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 1, options: .autoreverse, animations: {self.Prediction.center.x-=8}, completion: { _ in
        self.Prediction.setImage(UIImage(named: self.images[Int.random(in: 0...1)]), for: .normal)
    })
    
})
      

    }
}
