//
//  SelectPrefectureViewController.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

class SelectPrefectureViewController: UIViewController {

    private let bag = DisposeBag()
    private lazy var dataSource = SelectPrefectureDataSource(tableView: tableView)
    private let viewModel = SelectPrefectureViewModel()

    private let selectedPrefectureSubject = PublishSubject<Prefecture>()

    // MARK: Outlets
    @IBOutlet private weak var closeButton: UIBarButtonItem!
    @IBOutlet private weak var tableView: UITableView!

    // MARK: Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()

        bag.insert(
            viewModel.prefectures
                .bind(to: tableView.rx.items(dataSource: dataSource)),
            dataSource.selectedPrefecture
                .bind(to: prefectureSelected)
        )
    }
}

// MARK: - Properties
extension SelectPrefectureViewController {
    var prefecture: Observable<Prefecture> {
        return selectedPrefectureSubject.asObservable()
    }
}

// MARK: - Private Properties
private extension SelectPrefectureViewController {
    var prefectureSelected: Binder<Prefecture> {
        return .init(self) { vc, pref in
            vc.selectedPrefectureSubject.onNext(pref)
            vc.close()
        }
    }
}

// MARK: - Actions
private extension SelectPrefectureViewController {
    @IBAction func close(_ sender: Any? = nil) {
        dismiss(animated: true) { [unowned self] in
            self.selectedPrefectureSubject.onCompleted()
        }
    }
}
