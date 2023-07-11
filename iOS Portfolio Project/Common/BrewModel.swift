//
//  BrewModel.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import Foundation

struct BrewModel:Codable, Identifiable {
    let id: String
    let name: String
    let breweryType: String?
    let address1: String?
    let address2: String?
    let address3: String?
    let city: String
    let stateProvince: String?
    let postalCode: String?
    let country: String?
    let longitud: String?
    let latitude: String?
    let phone: String?
    let url: String?
    let state: String?
    let street: String?
}
