//
//  ParkingColumn.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct ParkingColumn: View {
	let parking: Parking
	
    var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(parking.name)
					.appTitle()
				Spacer()
			}
			
			VStack(spacing: 8) {
				HStack {
					DescriptionView(descriptionLabel: "Type", descriptionValue: parking.type)
					Spacer()
				}
			}
		}
		.padding()
		.appBackground()
    }
}

struct ParkingColumn_Previews: PreviewProvider {
    static var previews: some View {
		ParkingColumn(parking: Parking.example)
			.frame(minWidth: 150)
    }
}

struct CardBackgroundModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.background(Color.cardBackgroundColor)
			.clipShape(StylingHelper.cardClipShape)
			.shadow(color: Color.black.opacity(0.1), radius: 4)
	}
}

extension View {
	func appBackground() -> some View {
		modifier(CardBackgroundModifier())
	}
}
