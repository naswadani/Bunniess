//
//  Test.swift
//  BuniessApp
//
//  Created by naswakhansa on 13/12/23.
//

import SwiftUI


struct Test: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: FirstLevelView()) {
                Text("Go to First Level")
            }
        }
    }
}

struct FirstLevelView: View {
    var body: some View {
        NavigationLink(destination: SecondLevelView()) {
            Text("Go to Second Level")
        }
    }
}

struct SecondLevelView: View {
    var body: some View {
        NavigationLink(destination: ThirdLevelView()) {
            Text("Go to Third Level")
        }
    }
}

struct ThirdLevelView: View {
    var body: some View {
        Text("This is the third level")
    }
}


#Preview {
    Test()
}
