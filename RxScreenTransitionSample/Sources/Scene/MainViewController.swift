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

class MainViewController: UIViewController, MainView {

    private let bag = DisposeBag()
    private lazy var viewModel = MainViewModel(view: self)

    // MARK: Outlets
    @IBOutlet private weak var selectPrefectureButton: UIButton!

    // MARK: Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        bag.insert(
            selectPrefectureButton.rx.tap
                .flatMap { [unowned self] in self.viewModel.prefectureMessage }.debug("selectPrefecture")
                .flatMap { [unowned self] in self.showAlert(title: "", message: $0) }.debug("showAlert")
                .subscribe()
        )
    }
}
