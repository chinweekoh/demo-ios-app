//
//  PrimaryButtonStyle.swift
//  Parking
//
//  Created by Koh Chin Wee on 16/5/22.
//

import SwiftUI


struct PrimaryButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.overlay(configuration.isPressed ? Color.primary.opacity(0.5).clipShape(StylingHelper.cardClipShape) : nil)
	}
}
