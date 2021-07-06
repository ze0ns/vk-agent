//
//  LoginViewController.swift
//  VK-Agent
//
//  Created by Aleksandr Oschepkov on 06.07.2021.
//

import UIKit
//final обозначает что от этого класса нельзя наследоваться
//полезно для оптимизации приложения

final class LoginViewController: UIViewController {

    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .orange
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .cyan
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    
    deinit {
        
    }
}
