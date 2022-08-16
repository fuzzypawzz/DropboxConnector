//
//  DropboxView.swift
//  DropboxConnector
//
//  Created by Jannik Maag on 16/08/2022.
//

import Foundation
import SwiftUI
import SwiftyDropbox

struct DropboxView: UIViewControllerRepresentable {
  typealias UIViewControllerType = UIViewController
  
  @Binding var isShown : Bool
  
  func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    if isShown {
      let scopeRequest = ScopeRequest(
        scopeType: .user,
        scopes: ["account_info.read"],
        includeGrantedScopes: false
      )
      
      DropboxClientsManager.authorizeFromControllerV2(
        UIApplication.shared,
        controller: uiViewController,
        loadingStatusDelegate: nil,
        openURL: { (url: URL) -> Void in
          UIApplication.shared.open(
            url,
            options: [:],
            completionHandler: nil
          ) },
        scopeRequest: scopeRequest
      )
    }
  }
  
  func makeUIViewController(context _: Self.Context) -> UIViewController {
    return UIViewController()
  }
}
