//
//  UIViewControllerExtension.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/21.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import RxSwift
import UIKit

extension UIViewController {
    func showAlert(title: String?, message: String?) -> Completable {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        defer { present(alert, animated: true) }
        return Completable.create { observer in
            alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in observer(.completed) })
            return Disposables.create { alert.dismiss(animated: true) }
        }
    }
    
    func showConfirmAlert(title: String?, message: String?) -> Single<Bool> {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        defer { present(alert, animated: true) }
        return Single.create { observer in
            alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                observer(.success(true)) })
            alert.addAction(UIAlertAction(title: "Cancel", style: .default) { _ in
                observer(.success(false)) })
            return Disposables.create { alert.dismiss(animated: true) }
        }
    }
}
