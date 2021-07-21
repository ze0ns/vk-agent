//
//  groupViewController.swift
//  VK-Agent
//
//  Created by zeons on 11.07.2021.
//

import UIKit
final class groupViewController: UIViewController{
    
    @IBOutlet var collectionView: UICollectionView!
    
    var groups: [groupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let storage = groupsStorage()
        groups = storage.groups
        
    }
    @IBAction func addGroup(_ segue: UIStoryboardSegue){
        guard
            segue.identifier == "addGroup",
            let sourceController = segue.source as? findGroupController,       //приведение к определенному типу
            let indexPath = sourceController.tableView.indexPathForSelectedRow // Опеределили ячейку которую нажали
            else {
           return
        }
        let myGroup = sourceController.allGroups[indexPath.row]
        if !groups.contains(where: {$0.name == myGroup.name}){
            //groups.append(myGroup)
            collectionView.reloadData()
            
            
        }
    }
    
}

extension groupViewController: UICollectionViewDelegate{
    
}

extension groupViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        groups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: groupsCollectionViewCell.identifier, for: indexPath) as! groupsCollectionViewCell
        let group = groups[indexPath.item]
        cell.configure(groups: group)
        
        return cell
    }
    
    
}
