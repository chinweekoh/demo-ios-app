//
//  DescriptionView.swift
//  Parking
//
//  Created by Koh Chin Wee on 15/5/22.
//

import SwiftUI

struct DescriptionView: View {
	let descriptionLabel: String
	let descriptionValue: String
	
    var body: some View {
		VStack(alignment: .leading, spacing: 2) {
			Text(descriptionLabel)
				.appDescriptionLabel()
			Text(descriptionValue)
				.appDescriptionValue()
		}
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
		DescriptionView(descriptionLabel: "Type", descriptionValue: "Season")
    }
}
