//
//  findFrendsController.swift
//  VK-Agent
//
//  Created by zeons on 11.07.2021.
//

import UIKit
final class findFrendsController: UIViewController{
  
    @IBOutlet var tableView: UITableView!
    
    var frends = [frendModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frends = frendStorage().findFrends
        //подпишем нашу вьюху на делегат и датасоурс вручную
        //методы которые заставляют нашу таблицу работать
        
        tableView.delegate = self
        tableView.dataSource = self
        

        tableView.register(UINib(nibName:customFrendCell.reusedIdentifier, bundle: nil), forCellReuseIdentifier: customFrendCell.reusedIdentifier)
        tableView.estimatedRowHeight = 230.0
        //tableView.rowHeight = UITableView.automaticDimension
        
    }
    
}

extension findFrendsController: UITableViewDelegate, UITableViewDataSource {
    //Определяем количество секций
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    //Определяем количество ячеек . Ячеек у нас будет столько же , сколько друзей.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        frends.count //количество друзей
    }
    
    // cellForRowAt метод в котором мы должны вернуть тип ячейки
    // настраиваем нашу ячейку (подробнее 1:00:00 занаятие 3)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: customFrendCell.reusedIdentifier, for: indexPath) as? customFrendCell //метод который позволяет переиспользовать ячейку. мы принудельно указали ему тип переменной - наш тип
        else {
            return UITableViewCell()
        }
        let frend = frends[indexPath.row]
        cell.configure(frend: frend)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //пренудительно вызовем нашу сегу по иднетификатору
  //  performSegue(withIdentifier: "moveToProfile", sender: tableView.cellForRow(at: indexPath))
    }
    
}
