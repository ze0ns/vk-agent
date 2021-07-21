//
//  groupStorage.swift
//  VK-Agent
//
//  Created by zeons on 20.07.2021.
//

import Foundation
class groupsStorage{
    let groups:[groupModel]
    let allGroups: [allGroupModel]

    init ()
    {
        groups = [
            groupModel(name: "Стив Джобс клубс", avatar: "stive", nameCity: "Пало-Альто"),
            groupModel(name: "Билл Гейтс клубс", avatar: "bill", nameCity: "Сиетл"),
            groupModel(name: "Павел Дуров клубс", avatar: "pavel", nameCity: "Москва"),
            groupModel(name: "MaiklDell Cl", avatar: "maikl", nameCity: "Сиетл")
        ]
        
        allGroups = [

           allGroupModel(name: "Footbal club", avatar: "footbal", nameCity: "Около футбола"),
           allGroupModel(name: "Dev club", avatar: "dev", nameCity: "Все для разраба"),
           allGroupModel(name: "Game club", avatar: "game", nameCity: "Интересы по играм"),
           allGroupModel(name: "Swimming club", avatar: "swimming", nameCity: "Плавание"),
           allGroupModel(name: "Basketball club", avatar: "basketball", nameCity: "Баскетбол")
            
        ]
    }
}
