//
//  groupsTableViewCell.swift
//  VK-Agent
//
//  Created by zeons on 21.07.2021.
//

import UIKit
final class groupsTableViewCell: UITableViewCell{
    static let identifier = "groupsTableViewCell"
    

    @IBOutlet private var imageAllGroupView: UIImageView!
    @IBOutlet private var nameAllGroupLabel: UILabel!
    
    func configure(allGroups: allGroupModel){
        imageAllGroupView.image = UIImage(systemName:allGroups.avatar)
        nameAllGroupLabel.text = "\(allGroups.name)"
    
    }
}

