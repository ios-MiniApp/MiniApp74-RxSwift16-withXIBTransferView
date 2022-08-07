//
//  TopViewController.swift
//  MiniApp74-RxSwift16-withXIBTransferView
//
//  Created by 前田航汰 on 2022/08/07.
//

import UIKit
import RxSwift
import RxCocoa

class TopViewController: UIViewController {

    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var sliderValue: UISlider!
    @IBOutlet private weak var tranferViewButton: UIButton!
    private var topViewModel: TopViewModel?
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBinding()
    }

    private func setBinding() {
        topViewModel = TopViewModel(sliderValueObservable: sliderValue.rx.value.asObservable())

        topViewModel?.outputLabelObservable
            .bind(to: numberLabel.rx.text)
            .disposed(by: disposeBag)
    }

    @IBAction private func didTapButton(_ sender: Any) {
        let nextViewController = SecondViewController()
        nextViewController.configureWith(numberText: numberLabel.text ?? "")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

}
