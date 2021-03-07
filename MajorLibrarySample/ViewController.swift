//
//  ViewController.swift
//  MajorLibrarySample
//
//  Created by Shunsuke Suzuki on 2021/03/06.
//

import UIKit
import Alamofire
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var rxLabel: UILabel!
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // RxSwift observe resultLabel text changed
        resultLabel.rx.observe(String.self, "text")
            .subscribe(onNext: { text in
                // when resultLabel changed
                self.rxLabel.text = "resultLabel changed to \(String(describing: text!))"
            })
            .disposed(by: disposeBag)
    }

    @IBAction func touchTestButton(_ sender: Any) {
        // Http Request And Decode Response to Httpbin
        AF.request("https://httpbin.org/get").responseDecodable(of:Httpbin.self) { response in
            self.resultLabel.text = response.value?.url
        }
    }
}
// MARK: - Httpbin
// "https://httpbin.org/get" response
// This site can create Codable struct from response
// https://app.quicktype.io/
struct Httpbin: Codable {
    let origin: String
    let url: String
}
