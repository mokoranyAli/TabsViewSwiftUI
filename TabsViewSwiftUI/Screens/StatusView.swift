//
//  StatusView.swift
//  TabsViewSwiftUI
//
//  Created by Mohamed Korany on 6/22/21.
//

import SwiftUI

// MARK: - StatusView
//
struct StatusView: View {
    var body: some View {
        ZStack {
            Text("Status")
                .foregroundColor(.white)
                .font(Font.system(size: 100, weight: .bold))
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
