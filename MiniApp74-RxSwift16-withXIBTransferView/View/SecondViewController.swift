//
//  SecondViewController.swift
//  MiniApp74-RxSwift16-withXIBTransferView
//
//  Created by 前田航汰 on 2022/08/07.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var numberLabel: UILabel!
    private var secondViewModel: SecondViewMode?
    private var numberText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = numberText
    }

    func configureWith(numberText: String) {
        self.numberText = numberText
    }

}
