//
//  File.swift
//  Parking
//
//  Created by Koh Chin Wee on 14/5/22.
//

import Foundation

enum Tab: String, CaseIterable, Identifiable {
	case home, insights
	
	var id: Self {
		self
	}
	
	var title: String {
		switch self {
		case .home:
			return "Home"
		case .insights:
			return "Insights"
		}
	}
	
	var image: String {
		switch self {
		case .home:
			return "house"
		case .insights:
			return "info.circle"
		}
	}
}
