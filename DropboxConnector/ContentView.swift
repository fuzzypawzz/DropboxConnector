//
//  ContentView.swift
//  DropboxConnector
//
//  Created by Jannik Maag on 16/08/2022.
//

import SwiftUI
import SwiftyDropbox

struct ContentView: View {
  @State var isShown = false
  
  var body: some View {
    VStack {
      Text("Connect to Dropbox")
        .padding()
      
      Button(action: {
        self.isShown.toggle()
      }) {
        Text("Sign in")
      }
      DropboxView(isShown: $isShown)
        .padding()
    }
  }
  
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
