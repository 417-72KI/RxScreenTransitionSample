//
//  MainViewModel.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import Foundation
import RxSwift

class MainViewModel {
}

extension MainViewModel {
    func prefectureMessage(_ prefecture: Prefecture) -> String {
        return R.string.localizable.yourPrefecture(prefecture.localizedValue)
    }
}
