//
//  ParkingHeaderView.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct ParkingHeaderView: View {
	let title: String
	let highlight: String
	
    var body: some View {
		VStack(spacing: 14) {
			HStack {
				Text(title)
					.appTitle()
				Spacer()
			}
			
			HStack {
				Text(highlight)
					.appDescriptionValue()
				Spacer()
			}
		}
		.padding()
		.appBackground()
    }
}

struct ParkingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
		ParkingHeaderView(title: "Last Parked", highlight: "2B")
    }
}
