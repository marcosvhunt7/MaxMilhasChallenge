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

        PopulateDatabase.populate()

        window = UIWindow(frame: UIScreen.main.bounds)

        let homeInteractor = HomeInteractor(repository: Provider.shared.repository)
        if let homeController = HomeWireframe(interactor: homeInteractor).controller {
            window?.rootViewController = homeController
        }

        window?.makeKeyAndVisible()

        print(Provider.shared.repository.getAllTickets())

        return true
    }
}
