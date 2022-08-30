//
//  Datas.swift
//  SolarSystemPlanets
//
//  Created by Dusan Orescanin on 30/08/2022.
//

import Foundation

class Datas {
let mercure = Planet(position: 1, name: "Mercure")
let venus = Planet(position: 2, name: "Venus")
let terre = Planet(position: 3, name: "Terre")
let mars = Planet(position: 4, name: "Mars")
let jupiter = Planet(position: 5, name: "Jupiter")
let saturne = Planet(position: 6, name: "Saturne")
let uranus = Planet(position: 7, name: "Uranus")
let neptune = Planet(position: 8, name: "Neptune")
let pluton = Planet(position: 9, name: "Pluton (Est-ce une planéte?")
 
var allPlanets: [Planet] {
return [mercure, venus, terre, mars, jupiter, saturne, uranus, neptune, pluton]
}
}
