//
//  ContentView.swift
//  TabsViewSwiftUI
//
//  Created by Mohamed Korany on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0

    let tabs: [Tab] = [
        .init(icon: Image("chat"), title: "Chat"),
        .init(icon: Image("status"), title: "Status"),
        .init(icon: Image("call"), title: "Calls")
    ]

    init() {
        UINavigationBar.appearance().barTintColor = .navigation
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
    }

    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack(spacing: 0) {
                    // Tabs
                    Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)

                    // Views
                    TabView(selection: $selectedTab,
                            content: {
                                ChatView()
                                    .tag(0)
                                StatusView()
                                    .tag(1)
                                CallsView()
                                    .tag(2)
                            }).background(Color.container)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Tabs View SwiftUI")
                .ignoresSafeArea()
                
            }.background(Color.tab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

