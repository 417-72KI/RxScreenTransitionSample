//
//  SelectPrefectureDataSource.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

class SelectPrefectureDataSource: NSObject, RxTableViewDataSourceType {
    typealias Element = [Prefecture]

    var items: Element = []

    private let selectedPrefectureSubject = PublishSubject<Prefecture>()

    init(tableView: UITableView) {
        super.init()
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, observedEvent: Event<Element>) {
        guard case .next(let items) = observedEvent else { return }
        self.items = items
        tableView.reloadData()
    }

    deinit {
        selectedPrefectureSubject.onCompleted()
    }
}

// MARK: - Properties
extension SelectPrefectureDataSource {
    var selectedPrefecture: Observable<Prefecture> {
        return selectedPrefectureSubject.asObservable()
    }
}

// MARK: - UITableViewDataSource
extension SelectPrefectureDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.prefectureCell, for: indexPath) else { fatalError() }
        cell.textLabel?.text = items[indexPath.row].localizedValue
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SelectPrefectureDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedPrefectureSubject.onNext(items[indexPath.row])
    }
}
