//
//  ParkingGrid.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct ParkingGrid: View {
	@ObservedObject var parkingStore: ParkingStore
	
	private let parkings: [Parking] = Parking.allCases
	
	private let columns: [GridItem] = [
		GridItem(.flexible(), spacing: StylingHelper.cardSpacing),
		GridItem(.flexible(), spacing: StylingHelper.cardSpacing),
	]
	
    var body: some View {
		LazyVGrid(columns: columns) {
			ForEach(parkings) { parking in
				Button {
					parkingStore.lastParked(parking: parking)
				} label: {
					ParkingColumn(parking: parking)
				}.buttonStyle(PrimaryButtonStyle())
			}
		}
    }
}

struct ParkingGrid_Previews: PreviewProvider {
    static var previews: some View {
		ParkingGrid(parkingStore: ParkingStore())
    }
}
