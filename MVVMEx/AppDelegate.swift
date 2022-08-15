//
//  AppDelegate.swift
//  MVVMEx
//
//  Created by Вячеслав Квашнин on 15.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let viewController = ViewController.instantiate()
        let viewModel = ViewModel()
        viewController.viewModel = viewModel
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

