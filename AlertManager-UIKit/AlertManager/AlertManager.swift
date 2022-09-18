//
//  AlertManager.swift
//  AlertManager-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit


class AlertManager{
    
    static func showalert(_ type: AlertType, vc:UIViewController, completionHandler: @escaping () -> ()) {
        let alertColor:UIColor = .systemIndigo
        let alert = UIAlertController(title: type.title , message: type.message , preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: type.cancelText , style: .default, handler: nil)
        cancelAction.setValue(alertColor, forKey: "titleTextColor")
        alert.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: type.okText , style: .default, handler: { (UIAlertAction) in
            completionHandler()
        })
        okAction.setValue(alertColor, forKey: "titleTextColor")
        alert.addAction(okAction)
        
        DispatchQueue.main.async { vc.present(alert, animated: true) }
    }
    
}

struct AlertType {
    var title:String
    var message:String
    var okText:String = "yes"
    var cancelText:String = "cancel"
}

extension AlertType
{
    static var loginUser = AlertType(title: "Login", message: "Please Login First")
    
    static func removeFavorite(_ post: String) -> AlertType
    {
        AlertType(title: "Favorite", message: "Are you sure you want to remove \(post) from your favourite list?")
    }
    
    static func deleteUser(_ user: String) -> AlertType
    {
        AlertType(title: "delete", message: "Are you sure you want to delete user \(user)?")
    }
}


