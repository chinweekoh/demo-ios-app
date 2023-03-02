//
//  Parking.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import Foundation

enum Parking: String, Identifiable, CaseIterable {
	case twoA, twoB, threeA, threeB, fourA, fourB, fiveA, fiveB, sixA, sixB, sevenA, sevenB
	
	var id: Self {
		self
	}
	
	var name: String {
		switch self {
		case .twoA:
			return "Deck 2A"
		case .twoB:
			return "Deck 2B"
		case .threeA:
			return "Deck 3A"
		case .threeB:
			return "Deck 3B"
		case .fourA:
			return "Deck 4A"
		case .fourB:
			return "Deck 4B"
		case .fiveA:
			return "Deck 5A"
		case .fiveB:
			return "Deck 5B"
		case .sixA:
			return "Deck 6A"
		case .sixB:
			return "Deck 6B"
		case .sevenA:
			return "Deck 7A"
		case .sevenB:
			return "Deck 7B"
		}
	}
	
	var type: String {
		switch self {
		case .twoA, .twoB, .threeA, .threeB, .fourA, .fourB:
			return "Season"
		case .fiveA, .fiveB, .sixA, .sixB, .sevenA, .sevenB:
			return "Open"
		}
	}
}

extension Parking {
	static let example: Parking = .twoA
}
