//
//  SecondViewController.swift
//  MajorLibrarySample
//
//  Created by Shunsuke Suzuki on 2021/03/07.
//

import UIKit
import IBAnimatable

class SecondViewController: UIViewController {
    @IBOutlet weak var animtateButton: AnimatableButton!
    @IBOutlet weak var animateView: AnimatableView!
 
    @IBAction func touchAnimateButton(_ sender: Any) {
        animateView.animate(.pop(repeatCount: 3))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
