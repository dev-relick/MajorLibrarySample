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
        let url = URL(string: "https://cdn.pixabay.com/photo/2021/02/07/09/11/sunset-5990540_1280.jpg")
        kingfisherImage.kf.setImage(with: url)
    }
}
