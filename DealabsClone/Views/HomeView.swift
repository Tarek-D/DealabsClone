//
//  ContentView.swift
//  DealabsClone
//
//  Created by Tarek Noubli on 31/07/2024.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = HomeTabMenuOptions.all[0]
    var body: some View {
        VStack {
            HeaderHomeView()
                .padding(.bottom)
            HomeTabMenuView(selectedTab: $selectedTab)
        }
        .padding()
    }
}

struct HeaderHomeView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            },      label: {
                Image(systemName: "line.3.horizontal")
            })
            Spacer()
            Image("Dealabs_Logo.svg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.trailing, 80)
            Button(action: {}, label: {
                Image(systemName: "plus.square")
            })
            Button(action: {}, label: {
                Image(systemName: "slider.horizontal.3")
            })
        }
        .foregroundStyle(Color.primaryBlue)
    }
}

struct HomeTabMenuView: View {
    @Binding var selectedTab: String
    @Namespace var namespace
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(HomeTabMenuOptions.all, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selectedTab = option
                        }
                    },
                           label: {
                        VStack {
                            Text(option)
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            if option == selectedTab {
                                Color.primaryBlue
                                    .frame(height: 1)
                                    .matchedGeometryEffect(id: "underline", in: namespace, properties: .frame)
                            } else {
                                Color.clear.frame(height: 1)
                            }
                        }
                    })
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct HomeTabMenuOptions {
    static let all = [
        "A la une",
        "Tendance",
        "Tous",
        "Les + hot",
        "Commentés"
    ]
}




#Preview {
    HomeView()
}
