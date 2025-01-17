//
//  Settings.swift
//  ChuckNorrisApp
//
//  Created by Rodrigo Borges on 18/05/22.
//

import SwiftUI

struct Cell: View {

    private var title: String
    private var detail: String

    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
    }

    var body: some View {

        HStack {
            Text(title)
            Spacer()
            Text(detail)
                .foregroundColor(.gray)
        }
    }
}


struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Cell(title: "Preferred category", detail: "dev")
                Cell(title: "App version", detail: "1.0.0")

            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
