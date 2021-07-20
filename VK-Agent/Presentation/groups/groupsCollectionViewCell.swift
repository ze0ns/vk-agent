//
//  groupsCollectionViewCell.swift
//  VK-Agent
//
//  Created by zeons on 11.07.2021.
//

import UIKit
final class groupsCollectionViewCell: UICollectionViewCell{
    static let identifier = "groupsCollectionViewCell"
    
    @IBOutlet private var imageGroupView: UIImageView!
    @IBOutlet private var nameGroupLabel: UILabel!
    @IBOutlet private var cityGroupLabel: UILabel!
    
    func configure(groups: groupModel){
        imageGroupView.image = UIImage(systemName: groups.avatar)
        nameGroupLabel.text = "\(groups.name)"
        cityGroupLabel.text = "\(groups.nameCity)"
    }
}
