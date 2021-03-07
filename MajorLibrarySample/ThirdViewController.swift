//
//  ThirdViewController.swift
//  MajorLibrarySample
//
//  Created by Shunsuke Suzuki on 2021/03/07.
//

import UIKit
import Kingfisher

class ThirdViewController : UIViewController {
    @IBOutlet weak var kingfisherImage: UIImageView!
    @IBOutlet weak var imageDownloadButton: UIButton!
    
    @IBAction func touchImageDownloadButton(_ sender: Any) {
        let url = URL(string: "https://example.com/image.png")
        kingfisherImage.kf.setImage(with: url)
    }
}
