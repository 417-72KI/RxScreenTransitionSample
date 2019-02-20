//
//  MainViewController.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

class MainViewController: UIViewController {

    private let bag = DisposeBag()
    private let viewModel = MainViewModel()

    @IBOutlet private weak var selectPrefectureButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        bag.insert(
            selectPrefectureButton.rx.tap
                .flatMap { [unowned self] in self.selectPrefecture() }.debug("selectPrefecture")
                .map { [unowned self] in self.viewModel.prefectureMessage($0) }.debug("prefectureMessage")
                .flatMap { [unowned self] in self.showAlert(title: "", message: $0) }.debug("showAlert")
                .subscribe()
        )
    }
}

extension MainViewController: PrefectureSelectable {
}
