//
//  ParkingStore.swift
//  Parking
//
//  Created by Koh Chin Wee on 16/5/22.
//

import SwiftUI

class ParkingStore: ObservableObject {
	@Published var lastParkedLocation: String?
	@Published var lastParkedTimestamp: Double?
	
	init() {
		lastParkedLocation = UserDefaults.standard.string(forKey: "LastParkedLocation")
		lastParkedTimestamp = UserDefaults.standard.double(forKey: "LastParkedTimestamp")
	}
	
	func lastParked(parking: Parking) {
		lastParkedLocation = parking.name
		lastParkedTimestamp = Date().timeIntervalSince1970
		
		UserDefaults.standard.set(lastParkedLocation, forKey: "LastParkedLocation")
		UserDefaults.standard.set(lastParkedTimestamp, forKey: "LastParkedTimestamp")
	}
}
