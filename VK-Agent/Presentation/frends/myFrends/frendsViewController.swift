//
//  frendsViewController.swift
//  VK-Agent
//
//  Created by Aleksandr Oschepkov on 09.07.2021.
//

import UIKit

class frendsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToProfile"{
            segue.destination.title = "User Profile"
        }
        
    }
}

extension frendsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        default:
            return 3
        }
    }
    // timestop 2 часа
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "section: \(indexPath.section) row: \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //пренудительно вызовем нашу сегу по иднетификатору
        performSegue(withIdentifier: "moveToProfile", sender: nil)
    }
    
}
