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
        let entity1 = TicketEntity()
        entity1.departure = "Belo Horizonte"
        entity1.destination = "São Paulo"
        if let departureDate = Date.parse("2019-04-14T10:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity1.departureDate = departureDate
        }
        if let returnDate = Date.parse("2019-05-14T21:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity1.returnDate = returnDate
        }
        entity1.departureAirline = "Azul"
        entity1.returnAirline = "AZUL"
        entity1.departureAirline = "Azul"
        entity1.returnAirline = "GOL"
        entity1.departureAirplaneCode = "G3-9018"
        entity1.departureAirportCode = "CNF"
        entity1.departureTimeTravel = "1H55"
        entity1.departureScale = "VOO DIRETO"
        entity1.departureArrivalForecast = "07:51"
        entity1.departuredestinationAirportCode = "GIG"
        entity1.returnAirplaneCode = "G3-9018"
        entity1.returnAirportCode = "GIG"
        entity1.returnTimeTravel = "1H55"
        entity1.returnScale =  "VOO DIRETO"
        entity1.returnArrivalForecast = "07:51"
        entity1.returnDestinationAirportCode = "CNF"
        entity1.passengers = 6

        entity1.price = 4890.0

        let entity2 = TicketEntity()
        entity2.departure = "Belo Horizonte"
        entity2.destination = "São Paulo"
        if let departureDate = Date.parse("2019-05-14T10:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity2.departureDate = departureDate
        }
        if let returnDate = Date.parse("2019-06-14T21:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity2.returnDate = returnDate
        }
        entity2.departureAirline = "Azul"
        entity2.returnAirline = "AZUL"
        entity2.departureAirline = "Azul"
        entity2.returnAirline = "GOL"
        entity2.departureAirplaneCode = "G3-9018"
        entity2.departureAirportCode = "CNF"
        entity2.departureTimeTravel = "1H55"
        entity2.departureScale = "VOO DIRETO"
        entity2.departureArrivalForecast = "07:51"
        entity2.departuredestinationAirportCode = "GIG"
        entity2.returnAirplaneCode = "G3-9018"
        entity2.returnAirportCode = "GIG"
        entity2.returnTimeTravel = "1H55"
        entity2.returnScale =  "VOO DIRETO"
        entity2.returnArrivalForecast = "07:51"
        entity2.returnDestinationAirportCode = "CNF"
        entity2.passengers = 6

        entity2.price = 4890.0

        let entity3 = TicketEntity()
        entity3.departure = "Belo Horizonte"
        entity3.destination = "São Paulo"
        if let departureDate = Date.parse("2019-11-14T10:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity3.departureDate = departureDate
        }
        if let returnDate = Date.parse("2019-12-04T21:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity3.returnDate = returnDate
        }
        entity3.departureAirline = "Azul"
        entity3.returnAirline = "AZUL"
        entity3.departureAirline = "Azul"
        entity3.returnAirline = "GOL"
        entity3.departureAirplaneCode = "G3-9018"
        entity3.departureAirportCode = "CNF"
        entity3.departureTimeTravel = "1H55"
        entity3.departureScale = "VOO DIRETO"
        entity3.departureArrivalForecast = "07:51"
        entity3.departuredestinationAirportCode = "GIG"
        entity3.returnAirplaneCode = "G3-9018"
        entity3.returnAirportCode = "GIG"
        entity3.returnTimeTravel = "1H55"
        entity3.returnScale =  "VOO DIRETO"
        entity3.returnArrivalForecast = "07:51"
        entity3.returnDestinationAirportCode = "CNF"
        entity3.passengers = 6

        entity3.price = 4890.0

        let entity4 = TicketEntity()
        entity4.departure = "Belo Horizonte"
        entity4.destination = "São Paulo"
        if let departureDate = Date.parse("2019-09-14T10:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity4.departureDate = departureDate
        }
        if let returnDate = Date.parse("2019-12-14T21:45:00+0000", format: "yyyy-MM-dd'T'HH:mm:ssZ") {
            entity4.returnDate = returnDate
        }
        entity4.departureAirline = "Azul"
        entity4.returnAirline = "AZUL"
        entity4.departureAirline = "Azul"
        entity4.returnAirline = "GOL"
        entity4.departureAirplaneCode = "G3-9018"
        entity4.departureAirportCode = "CNF"
        entity4.departureTimeTravel = "1H55"
        entity4.departureScale = "VOO DIRETO"
        entity4.departureArrivalForecast = "07:51"
        entity4.departuredestinationAirportCode = "GIG"
        entity4.returnAirplaneCode = "G3-9018"
        entity4.returnAirportCode = "GIG"
        entity4.returnTimeTravel = "1H55"
        entity4.returnScale =  "VOO DIRETO"
        entity4.returnArrivalForecast = "07:51"
        entity4.returnDestinationAirportCode = "CNF"
        entity4.passengers = 6

        entity4.price = 4890.0

        try? Provider.shared.localDataSource.saveTickets([entity1, entity2, entity3, entity4])
    }
}
