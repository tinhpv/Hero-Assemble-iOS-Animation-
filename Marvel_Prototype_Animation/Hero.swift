//
//  Hero.swift
//  Marvel_Prototype_Animation
//
//  Created by TinhPV on 8/11/20.
//  Copyright © 2020 TinhPV. All rights reserved.
//

import Foundation

struct Hero {
    let name: String
    let image: String
    let description: String
    
    static func all() -> [Hero] {
        return [
            Hero(name: "Thor",
                 image: "thor.jpg",
                 description: "Thor is a hammer-wielding god associated with lightning, thunder, storms, sacred groves and trees, strength, the protection of mankind and also hallowing and fertility. Besides Old Norse Þórr, extensions of the god occur in Old English as Þunor and in Old High German as Donar. All forms of the deity stem from a Common Germanic *Þunraz (meaning thunder)"),
            Hero(name: "Aquaman",
                 image: "aquaman.jpg",
                 description: "Half-human, half-Atlantean Arthur is born with the ability to communicate with marine creatures. He goes on a quest to retrieve the legendary Trident of Atlan and protect the water world."),
            Hero(name: "Black Panther",
                 image: "blackpanther.jpg",
                 description: "Marvel Studios’ “Black Panther” follows T’Challa who, after the death of his father, the King of Wakanda, returns home to the isolated, technologically advanced African nation to succeed to the throne and take his rightful place as king. But when a powerful old enemy reappears, T’Challa’s mettle as king—and Black Panther—is tested when he is drawn into a formidable conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people and their way of life."),
            Hero(name: "Iron man",
                 image: "ironman.jpg",
                 description: "Iron Man is a fictional superhero appearing in American comic books published by Marvel Comics. The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby."),
            Hero(name: "The Flash",
                 image: "flash.jpg",
                 description: "The Flash is an American superhero television series developed by Greg Berlanti, Andrew Kreisberg, and Geoff Johns, airing on The CW. It is based on the DC Comics character Barry Allen / Flash, a costumed superhero crime-fighter with the power to move at superhuman speeds. It is a spin-off from Arrow, existing in the same fictional universe known as Arrowverse. The series follows Barry Allen, portrayed by Grant Gustin, a crime scene investigator who gains super-human speed, which he uses to fight criminals, including others who have also gained superhuman abilities."),
            Hero(name: "Hulk",
                 image: "hulk.jpg",
                 description: "The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics. Created by writer Stan Lee and artist Jack Kirby, the character first appeared in the debut issue of The Incredible Hulk (May 1962). In his comic book appearances, the character is both the Hulk, a green-skinned, hulking and muscular humanoid possessing a vast degree of physical strength, and his alter ego Dr. Robert Bruce Banner, a physically weak, socially withdrawn, and emotionally reserved physicist, the two existing as independent personalities and resenting of the other.")

        ]
    }
}
