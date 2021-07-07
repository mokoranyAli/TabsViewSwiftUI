//
//  ChatView.swift
//  TabsViewSwiftUI
//
//  Created by Mohamed Korany on 6/22/21.
//

import Foundation

import SwiftUI

// MARK: - ChatView
//
struct ChatView: View {
    var body: some View {
        ZStack {
            Text("Chat")
                .foregroundColor(.white)
                .font(Font.system(size: 100, weight: .bold))
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}
