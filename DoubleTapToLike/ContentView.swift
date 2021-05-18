//
//  ContentView.swift
//  DoubleTapToLike
//
//  Created by Ndayisenga Jean Claude on 18/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var ShowLike = false
    var body: some View {
        NavigationView {
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 400)
                    .onTapGesture(count: 2) {
                        withAnimation {
                            ShowLike.toggle()
                            
                   }
                        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                            withAnimation {
                                ShowLike.toggle()
                        }
                    }
                }
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                    .opacity(ShowLike ? 1: 0)
                    .animation(Animation.linear(duration: 0.3))
               }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
