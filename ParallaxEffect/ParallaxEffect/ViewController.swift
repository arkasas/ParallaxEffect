//
//  ViewController.swift
//  ParallaxEffect
//
//  Created by Arek on 30.04.2017.
//  Copyright © 2017 Arek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var famale: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        applyMotionEffect(toView: background, magintude: 10);
        applyMotionEffect(toView: famale, magintude: -20);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController{
    func applyMotionEffect(toView view: UIView, magintude: Float){
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis);
        xMotion.minimumRelativeValue = -magintude;
        xMotion.maximumRelativeValue = magintude;
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis);
        yMotion.maximumRelativeValue = magintude;
        yMotion.minimumRelativeValue = -magintude;
        
        let group = UIMotionEffectGroup();
        group.motionEffects = [xMotion, yMotion];
        view.addMotionEffect(group);
    }
}

