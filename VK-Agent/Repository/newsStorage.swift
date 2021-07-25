//
//  newsStorage.swift
//  VK-Agent
//
//  Created by zeons on 25.07.2021.
//
import Foundation
class newsStorage{
    let news:[newsModel]

    init ()
    {
        news = [
            newsModel(newsDate: "01-01-2021", newsText: "Поздравляю всех с Новмым Годом"),
            newsModel(newsDate: "14-02-2021", newsText: "Поздравляю всех  Днем Святого Валентина"),
            newsModel(newsDate: "08-03-2021", newsText: "Поздравляю всех женщин с 8 марта"),
            newsModel(newsDate: "01-04-2021", newsText: "Я лечу на Марс, с первым апреля"),
            newsModel(newsDate: "01-05-2021", newsText: "Мир, Труд, Май"),
            newsModel(newsDate: "01-06-2021", newsText: "Международный день защиты детей"),
            newsModel(newsDate: "01-09-2021", newsText: "С Первым Сентября")
        ]
    
    }
}
