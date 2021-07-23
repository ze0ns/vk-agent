//
//  customViewTest.swift
//  VK-Agent
//
//  Created by zeons on 23.07.2021.
//

import UIKit
class customViewTest: UIView{
    
    //когда хотим добавить статические элементы
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // Вызывается когда макет загружен
    override class func awakeFromNib() {
        super.awakeFromNib()
        //округляем вьюшку по краям указывая радиус
    }
    
    
    //Вызывается когда размеры макета подсчитаны и установлены , когда система уже подсчитала все что вы разместили на сториборд
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 10 //округляем вьюшку по краям указывая радиус
        layer.masksToBounds = false  //обрезаем по слою
        layer.borderWidth = 3
        layer.borderColor = UIColor.red.cgColor
        
        
        layer.shadowOffset = CGSize(width: 20, height: 20) //Тень, указываем смещение тени
        layer.shadowColor = UIColor.green.cgColor//CGColor(gray: 2, alpha: 1) //цвет тени, например в оттенке серого
        layer.shadowOpacity = 0.5 //указываем прозрачность тени
        layer.shadowRadius = 10 //радиус тени
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context1 = UIGraphicsGetCurrentContext(),let context = UIGraphicsGetCurrentContext()
        else {
            return
        }
        context1.fill(CGRect(x: 20, y: 20, width: 160, height: 160)) //мы рисуем квадрат 50 на 50 и заполняем его
        context.setStrokeColor(UIColor.yellow.cgColor)
        context.move(to: CGPoint(x: 30, y: 30))
        context.addLine(to: CGPoint(x: 170, y: 30))
        context.addLine(to: CGPoint(x: 170, y: 170))
        context.addLine(to: CGPoint(x: 30, y: 170))
        context.addLine(to: CGPoint(x: 30, y: 30))
        context.setLineWidth(5)
        context.closePath()
        context.strokePath()
        
        
        
    }
}
