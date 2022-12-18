//
//  Alert.swift
//  RouteTestTask
//
//  Created by Halina Kurylchykava on 18.12.22.
//

import Foundation
import UIKit

extension UIViewController {
    func alertAddAddress(title: String, placeHolder: String, completionHandler: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) { (action) in
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else {
                return
            }
            completionHandler(text)
        }
        
        alertController.addTextField{ (tf) in
            tf.placeholder = placeHolder
        }
        let alertCancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
        }
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        present(alertController, animated: true)
    }
}
