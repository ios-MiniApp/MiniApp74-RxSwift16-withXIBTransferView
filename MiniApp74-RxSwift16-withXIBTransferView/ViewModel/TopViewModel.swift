//
//  TopViewModel.swift
//  MiniApp74-RxSwift16-withXIBTransferView
//
//  Created by 前田航汰 on 2022/08/07.
//

import Foundation
import RxSwift

class TopViewModel {

    var outputLabelObservable = PublishSubject<String>()
    private let disposeBag = DisposeBag()

    init(sliderValueObservable: Observable<Float>) {

        sliderValueObservable
            .subscribe(onNext: { sliderValue in
                let sliderText = String(Int(sliderValue))
                self.outputLabelObservable.onNext(sliderText)
            })
            .disposed(by: disposeBag)

    }

}
