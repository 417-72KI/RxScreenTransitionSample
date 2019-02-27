//
//  MainViewModel.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import Foundation
import RxSwift

protocol MainView: class, PrefectureSelectable {
}

class MainViewModel {
    private weak var view: MainView?

    init(view: MainView) {
        self.view = view
    }
}

// MARK: - Properties
extension MainViewModel {
    var prefectureMessage: Maybe<String> {
        return selectPrefecture()
            .map { [unowned self] in self.createMessage(withPrefecture: $0) }
    }
}

// MARK: - Private Functions
private extension MainViewModel {
    func selectPrefecture() -> Maybe<Prefecture> {
        guard let view = view else {
            assertionFailure("view is disposed")
            return Maybe.error(Error.unknown)
        }
        return view.selectPrefecture()
    }

    func createMessage(withPrefecture prefecture: Prefecture) -> String {
        return R.string.localizable.yourPrefecture(prefecture.localizedValue)
    }
}
