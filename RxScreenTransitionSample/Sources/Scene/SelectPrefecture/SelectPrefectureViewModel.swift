//
//  SelectPrefectureViewModel.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import Foundation
import RxSwift

class SelectPrefectureViewModel {
    private let prefecturesSubject = BehaviorSubject<[Prefecture]>(value: Prefecture.allCases)
}

// MARK: - Properties
extension SelectPrefectureViewModel {
    var prefectures: Observable<[Prefecture]> {
        return prefecturesSubject.asObservable()
    }
}
