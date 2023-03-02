//
//  DescriptionLabelModifier.swift.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

fileprivate struct DescriptionLabelModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.headline.bold())
			.foregroundColor(Color.primary)
	}
}

extension Text {
	func appDescriptionLabel() -> some View {
		modifier(DescriptionLabelModifier())
	}
}
