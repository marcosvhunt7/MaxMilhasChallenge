//
//  PopulateDatabase.swift
//  MaxMilhasChallenge
//
//  Created by Marcos Vinicius da Cunha Brito on 08/09/18.
//  Copyright © 2018 Marcos Vinicius da Cunha Brito. All rights reserved.
//

import Foundation

class PopulateDatabase {

    static func populate() {
        let entity = TicketEntity()
        entity.departure = "Belo Horizonte"
        entity.destination = "São Paulo"
        if let departureDate = Date.parse("2019-04-14T10:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity.departureDate = departureDate
        }
        if let returnDate = Date.parse("2019-05-14T21:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity.returnDate = returnDate
        }
        entity.departureAirline = "Azul"
        entity.returnAirline = "AZUL"
        entity.departureAirline = "Azul"
        entity.returnAirline = "GOL"
        entity.departureAirplaneCode = "G3-9018"
        entity.departureAirportCode = "CNF"
        entity.departureTimeTravel = "1H55"
        entity.departureScale = "VOO DIRETO"
        entity.departureArrivalForecast = "07:51"
        entity.departuredestinationAirportCode = "GIG"
        entity.returnAirplaneCode = "G3-9018"
        entity.returnAirportCode = "GIG"
        entity.returnTimeTravel = "1H55"
        entity.returnScale =  "VOO DIRETO"
        entity.returnArrivalForecast = "07:51"
        entity.returnDestinationAirportCode = "CNF"
        entity.passengers = 6

        entity.price = 4890.0

        try? Provider.shared.localDataSource.saveTickets([entity])
    }
}
