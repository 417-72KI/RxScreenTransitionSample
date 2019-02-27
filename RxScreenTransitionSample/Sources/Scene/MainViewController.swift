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
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var resetButton: UIButton!

    // MARK: Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        bag.insert(
            selectPrefectureButton.rx.tap
                .flatMap { [unowned self] in self.viewModel.prefectureMessage }.debug("selectPrefecture")
                .bind(to: resultLabel.rx.text),
            resetButton.rx.tap.debug("resetButton tapped")
                .subscribe(onNext: { [unowned self] in self.reset() })
        )
    }
}

private extension MainViewController {
    func reset() {
        guard let window = UIApplication.shared.keyWindow else {
            assertionFailure("No window")
            return
        }
        guard let newVC = R.storyboard.main.instantiateInitialViewController() else {
            assertionFailure("Failed to instantiate MainViewController")
            return
        }
        window.rootViewController = newVC
    }
}
