//
//  ViewController.swift
//  AlertManager-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRemoveFavorite(_ sender: Any) {
        AlertManager.showalert(AlertType.removeFavorite("Islam Post"), vc: self) { [weak self] in
            guard let self = self else {return}
            print("Remove Favorite Action done")
        }
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        AlertManager.showalert(AlertType.loginUser, vc: self) { [weak self] in
            guard let self = self else {return}
            print("Login Action done")
        }
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        AlertManager.showalert(AlertType.deleteUser("Islam"), vc: self) { [weak self] in
            guard let self = self else {return}
            print("Delete Action done")
        }
    }
    
}



