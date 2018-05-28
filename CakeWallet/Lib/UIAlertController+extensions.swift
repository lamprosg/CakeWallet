//
//  UIAlertController+extensions.swift
//  Wallet
//
//  Created by Cake Technologies 02.10.17.
//  Copyright © 2017 Cake Technologies. 
//

import UIKit

extension UIAlertController {
    static func showInfo(title: String? = nil, message: String?, presentOn presenter: UIViewController, handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
        presenter.present(alert, animated: true)
    }
    
    static func showError(title: String?, message: String?, presentOn presenter: UIViewController, handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: handler))
        presenter.present(alert, animated: true)
    }
    
    static func showSpinner(withTitle title: String? = nil, message: String?) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let activityView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        activityView.startAnimating()
        alert.view.addSubview(activityView)
        activityView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(15)
        }
        
        return alert
    }
}
