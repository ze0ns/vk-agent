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

    override func viewDidLoad() {
        super.viewDidLoad()
        
//frame - размеры относительно родительской вьюшки (x,y,h,w)
//bounds = (x,y,h,w)
        let viewTest =  UIView()
// CGRect - Задаем координаты и размеры нашей вьюшки
        viewTest.frame = CGRect(x: 40, y: 100, width: 100, height: 200)
        viewTest.backgroundColor = .green
        view.addSubview(viewTest)
//    Constraints - позволяет задаваеть какаие отступы делать для вьюшек
        
    }
}
