//
//  groupStorage.swift
//  VK-Agent
//
//  Created by zeons on 20.07.2021.
//

import Foundation
class groupsStorage{
    let groups:[groupModel]
    

    init ()
    {
        groups = [
            groupModel(name: "Стив Джобс клубс", avatar: "stive", nameCity: "Пало-Альто"),
            groupModel(name: "Билл Гейтс клубс", avatar: "bill", nameCity: "Сиетл"),
            groupModel(name: "Павел Дуров клубс", avatar: "pavel", nameCity: "Москва")
        ]
        
//        findGroups = [
//
//            frendModel(name: "Стив Джобс", avatar: "stive", frendProfile: frendProfileModel(birthday: "24-02-1955", City: "Пало-Альто", mood: "good")),
//            frendModel(name: "Билл Шейтс", avatar: "bill", frendProfile: frendProfileModel(birthday: "28-10-1955", City: "Сиетл", mood: "bad")),
//            frendModel(name: "Павел Дуров", avatar: "pavel", frendProfile: frendProfileModel(birthday: "10-10-1984", City: "Москва", mood: "fine")),
//            frendModel(name: "Арвид Кришна", avatar: "arvid", frendProfile: frendProfileModel(birthday: "24-02-1955", City: "Пало-Альто", mood: "good")),
//            frendModel(name: "Рен Женфей", avatar: "ren", frendProfile: frendProfileModel(birthday: "28-10-1955", City: "Сиетл", mood: "bad")),
//            frendModel(name: "Майкл Делл", avatar: "maikl", frendProfile: frendProfileModel(birthday: "10-10-1984", City: "Москва", mood: "fine"))
//
//
//        ]
    }
}
