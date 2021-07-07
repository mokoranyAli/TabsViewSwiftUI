//
//  CallsView.swift
//  TabsViewSwiftUI
//
//  Created by Mohamed Korany on 6/22/21.
//

import SwiftUI

// MARK: - CallsView
//
struct CallsView: View {
    var body: some View {
        ZStack {
            Text("Calls")
                .foregroundColor(.white)
                .font(Font.system(size: 100, weight: .bold))
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}
