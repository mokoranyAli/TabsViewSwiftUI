//
//  Tabs.swift
//  TabsViewSwiftUI
//
//  Created by Mohamed Korany on 6/22/21.
//

import SwiftUI

struct Tab {
    var icon: Image?
    var title: String
}

struct Tabs: View {
    var fixed = true
    var tabs: [Tab]
    var geoWidth: CGFloat
    @Binding var selectedTab: Int

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { proxy in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        ForEach(0 ..< tabs.count, id: \.self) { row in
                            Button(action: {
                                withAnimation {
                                    selectedTab = row
                                }
                            }, label: {
                                VStack(spacing: 0) {
                                    HStack {

                                        // Text
                                        Text(tabs[row].title)
                                            .font(Font.system(size: 18, weight: .semibold))
                                            .foregroundColor(selectedTab == row ? .selected : .label)
                                            .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 4))
                                        
                                        // Image
                                        AnyView(tabs[row].icon)
                                            .foregroundColor(selectedTab == row ? .selected : .label)
                                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2))
                                    }
                                    .frame(width: fixed ? (geoWidth / CGFloat(tabs.count)) : .none, height: 52)
                                    // Bar Indicator
                                    Rectangle().fill(selectedTab == row ? Color.selected : Color.clear)
                                        .frame(height: 3)
                                }.fixedSize()
                            })
                                .accentColor(Color.selected)
                                .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .onChange(of: selectedTab) { target in
                        withAnimation {
                            proxy.scrollTo(target)
                        }
                    }
                }
            }
        }
        .frame(height: 60)
        .onAppear(perform: {
            UIScrollView.appearance().bounces = fixed ? false : true
        })
        .onDisappear(perform: {
            UIScrollView.appearance().bounces = true
        })
    }
}
