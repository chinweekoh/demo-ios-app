//
//  TitleModifier.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.title.bold())
			.foregroundColor(Color.themeBackgroundColor)
			.padding(.horizontal, 10)
			.padding(.vertical, 4)
			.background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color.accentColor))
	}
}

extension Text {
	func appTitle() -> some View {
		modifier(TitleModifier())
	}
}
