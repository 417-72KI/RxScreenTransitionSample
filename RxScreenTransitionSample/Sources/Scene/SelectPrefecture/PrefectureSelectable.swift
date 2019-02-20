//
//  PrefectureSelectable.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import RxSwift
import UIKit

protocol PrefectureSelectable {
    func selectPrefecture() -> Maybe<Prefecture>
}

extension PrefectureSelectable where Self: UIViewController {
    func selectPrefecture() -> Maybe<Prefecture> {
        guard let nav = R.storyboard.selectPrefecture.instantiateInitialViewController() else {
            fatalError()
        }
        guard let selectPrefectureVC = nav.viewControllers.first as? SelectPrefectureViewController else {
            fatalError()
        }
        defer {
            present(nav, animated: true)
        }
        return selectPrefectureVC.prefecture.asMaybe()
    }
}
