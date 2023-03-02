//
//  DescriptionValueModifier.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

fileprivate struct DescriptionValueModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.title2.bold())
			.foregroundColor(Color.primary)
	}
}

extension Text {
	func appDescriptionValue() -> some View {
		modifier(DescriptionValueModifier())
	}
}
