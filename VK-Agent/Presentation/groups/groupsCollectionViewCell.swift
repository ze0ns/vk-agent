//
//  groupsCollectionViewCell.swift
//  VK-Agent
//
//  Created by zeons on 11.07.2021.
//

import UIKit
final class groupsCollectionViewCell: UICollectionView{
    static let identifier = "groupsCollectionViewCell"
    
    @IBOutlet weak var imageGroupView: UIImageView!
    @IBOutlet weak var nameGroupLabel: UILabel!

    func configure(groups: groupModel){
        imageGroupView.image = UIImage(systemName: groups.avatar)
        nameGroupLabel.text = "\(groups.name)"
    }
}
