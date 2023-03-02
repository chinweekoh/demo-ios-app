//
//  ParkingView.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct ParkingView: View {
	@StateObject private var parkingStore = ParkingStore()
	
	private var lastParked: String {
		guard let location = parkingStore.lastParkedLocation,
			  let timestamp = parkingStore.lastParkedTimestamp else {
			return "N.A"
		}
		let date = Date(timeIntervalSince1970: timestamp)
		let formatter = DateFormatter()
		formatter.dateFormat = "E, dd MMM - HH:mm a"
		let displayDate = formatter.string(from: date)		
		return "\(displayDate) @ \(location)"
	}
	
    var body: some View {
		VStack {
			ParkingHeaderView(title: "Last Parked", highlight: lastParked)
			
			ScrollView {
				ParkingGrid(parkingStore: parkingStore)
			}
		}
		.padding()
		.background(Color.rootBackgroundColour)
    }
}

struct ParkingView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingView()
    }
}
