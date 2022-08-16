//
//  AppDelegate.swift
//  DropboxConnector
//
//  Created by Jannik Maag on 16/08/2022.
//

import Foundation
import SwiftUI
import SwiftyDropbox

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    DropboxClientsManager.setupWithAppKey("tu4wkqwurvnusog")
    return true
  }
}
