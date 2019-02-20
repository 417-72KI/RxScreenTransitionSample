//
//  ViewModel.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import Foundation
import RxSwift

class ViewModel {
}

extension ViewModel {
    func prefectureMessage(_ prefecture: Prefecture) -> String {
        return R.string.localizable.yourPrefecture(prefecture.localizedValue)
    }
}
