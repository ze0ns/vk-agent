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

           allGroupModel(name: "Footbal club", avatar: "footbal", description: "Около футбола"),
           allGroupModel(name: "Dev club", avatar: "dev", description: "Все для разраба"),
           allGroupModel(name: "Game club", avatar: "game", description: "Интересы по играм"),
           allGroupModel(name: "Swimming club", avatar: "swimming", description: "Плавание"),
           allGroupModel(name: "Basketball club", avatar: "basketball", description: "Баскетбол")
            
        ]
    }
}
