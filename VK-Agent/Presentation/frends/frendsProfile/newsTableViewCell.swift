//
//  newsTableViewCell.swift
//  VK-Agent
//
//  Created by zeons on 25.07.2021.
//
import UIKit
final class newsTableViewCell: UITableViewCell {
    static let reusedIdentifier = "newsTableViewCell" //мы не сможем её вызвать дальше класса
    @IBOutlet weak var dateOfNews: UILabel!
    @IBOutlet weak var newsLabel: UITextView!
    
    func configure(news: newsModel){
        newsLabel.text! = news.newsText
        dateOfNews.text = news.newsDate
    }

}

