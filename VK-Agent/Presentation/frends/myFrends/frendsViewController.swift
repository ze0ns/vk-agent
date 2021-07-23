//
//  frendsViewController.swift
//  VK-Agent
//
//  Created by Aleksandr Oschepkov on 09.07.2021.
//

import UIKit

class frendsViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    var frends: [frendModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Для примера при запуске мы вызываем наше хранилище со списком друзей и их профелей
        
        let storage = frendStorage()
        frends = storage.frends

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToProfile"{
            segue.destination.title = "User Profile"
        }
    }
    
    @IBAction func addFrends(_ segue: UIStoryboardSegue){
        guard
            segue.identifier == "addFrend",
            let sourceController = segue.source as? findFrendsController,       //приведение к определенному типу
            let indexPath = sourceController.tableView.indexPathForSelectedRow // Опеределили ячейку которую нажали
            else {
           return
        }
        let frend = sourceController.frends[indexPath.row]
        
        //Добавляем проверку, если друг с таким именем - не добавляем (func .contains)
        if !frends.contains(where: {$0.name == frend.name}){
            frends.append(frend)
            tableView.reloadData()
        }
    }
    
}

extension frendsViewController: UITableViewDelegate, UITableViewDataSource {
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
            let cell = tableView.dequeueReusableCell(withIdentifier: frendTableViewCell.reusedIdentifier, for: indexPath) as? frendTableViewCell
        else {
            return UITableViewCell()
        }
        let frend = frends[indexPath.row]
        cell.configure(frend: frend)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //пренудительно вызовем нашу сегу по иднетификатору
      //  performSegue(withIdentifier: "moveToProfile", sender: nil)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //Если нажата кнопка - Удалить
        if editingStyle == .delete{
            //Удаляем город из масива
            frends.remove(at: indexPath.row)
            //Удаляем ячейку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
