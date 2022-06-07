//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Zach Cervi on 6/6/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
