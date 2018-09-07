//
//  AppDelegate.swift
//  dassa
//
//  Created by Marcos Vinicius da Cunha Brito on 07/09/18.
//  Copyright © 2018 Marcos Vinicius da Cunha Brito. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
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
        entity.returnAirline = "GOL"
        
        try? Provider.shared.localDataSource.saveTickets([entity])
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let homeInteractor = HomeInteractor(repository: Provider.shared.repository)
        if let homeController = HomeWireframe(interactor: homeInteractor).controller {
            window?.rootViewController = homeController
        }
        
        window?.makeKeyAndVisible()
        
        print(Provider.shared.repository.getTickets())
        
        
        
        return true
    }
}

