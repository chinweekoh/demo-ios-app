//
//  ContentView.swift
//  Parking
//
//  Created by Koh Chin Wee on 7/5/22.
//

import SwiftUI

struct ContentView: View {
	
    var body: some View {
		#if os(iOS)
		AppTabNavigation()
		#elseif os(macOS)
		Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
		#endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
