//final обозначает что от этого класса нельзя наследоваться
//полезно для оптимизации приложения
//frame - размеры относительно родительской вьюшки (x,y,h,w)
//bounds = (x,y,h,w)
// CGRect - Задаем координаты и размеры нашей вьюшки
//    Constraints - позволяет задаваеть какаие отступы делать для вьюшек

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLableUsername: UILabel!
    @IBOutlet weak var titlePassword: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setTitle("Log in", for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.backgroundColor = .yellow
    
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
    }
    //Клавиатура появляется
    @objc func keyboardWasShow(notification:Notification){
        
        //Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        //Добавляем отступ внзу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    //Клавиатура исчезает
    @objc func keyboardWillBeHidden(notification:Notification){
        //Устанавливаем отступ равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
}
