//
//  AppTabNavigation.swift
//  Parking
//
//  Created by Koh Chin Wee on 14/5/22.
//

import SwiftUI

struct AppTabNavigation: View {
	
	@SceneStorage("selectedTab") private var selectedTab: Tab = .home
	
    var body: some View {
		TabView(selection: $selectedTab) {
			NavigationView {
				ParkingView()
					.navigationTitle(Tab.home.title)
			}.tabItem {
				Label(Tab.home.title, systemImage: Tab.home.image)
			}.tag(Tab.home)
			
			NavigationView {
				Text(Tab.insights.title)
			}.tabItem {
				Label(Tab.insights.title, systemImage: Tab.insights.image)
			}.tag(Tab.insights)
		}
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
