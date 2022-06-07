//
//  SettingsView.swift
//  Fruits
//
//  Created by Zach Cervi on 6/6/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essential nutrients including potassium, dietary fiber, vitamins and much more!")
                                .font(.footnote)
                        }
                    }
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                     
                       SettingsRowView(name: "Developer", content: "Zach Cervi")
                        SettingsRowView(name: "Designer", content: "John Doe")
                        SettingsRowView(name: "Compatabililty", content: "iOS15")
                        SettingsRowView(name: "Website", linkLabel: "Google", linkDestination: "google.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@zachcervi", linkDestination: "twitter.com")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } //: GROUPBOX
                   
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLLVIEW
        } //: NAVIGATIONVIEW
       
    }
}

//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
