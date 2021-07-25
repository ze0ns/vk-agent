//
//  frendProfileController.swift
//  VK-Agent
//
//  Created by zeons on 25.07.2021.
//
import UIKit
final class frendProfileController: UIViewController{
  
    
    var myFrend: [frendModel] = []
    var frendRow: Int = 0
    
    @IBOutlet var nameTest: UILabel!
    @IBOutlet private var liveCityLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var imageName: avatatImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storage = frendStorage()
        myFrend = storage.frends
        print(myFrend[frendRow])
        imageName.image = UIImage(named:myFrend[frendRow].avatar)
        liveCityLabel.text! = myFrend[frendRow].frendProfile.City
        birthdayLabel?.text = myFrend[frendRow].frendProfile.birthday
        nameTest.text = myFrend[frendRow].name
    }
 
}
