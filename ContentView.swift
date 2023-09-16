//
//  ContentView.swift
//  L5Challenge
//
//  Created by Ozan Kocakaya on 13.09.23.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var gag:[tryhard] = [tryhard(gag0: "Gesundheit"), tryhard(gag0: "Glück"), tryhard(gag0: "Zufriedenheit"), tryhard(gag0: "Geld"), tryhard(gag0: "Zusammensein")]
    var body: some View {
        VStack {
            List(gag) { item in
                Text(item.gag0)
            }
            
            HStack {
                Text(String(counter))
                    .font(.largeTitle)
                
                Spacer()
                Button {
                   
                    nommo()
                } label: {
                    Image(systemName: "square.grid.3x1.folder.fill.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                }
            }
            .padding()
        }
    }

    // Zähler, beim Tippen von Button (Counter)
    func nommo() {
        counter += 1
        var random = gag[Int.random(in: 0...4)]
        gag.append(random)
        print(gag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
