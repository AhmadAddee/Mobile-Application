//
//  Marker.swift
//  TicTacToeSwiftUI
//
//  Created by Jonas Wåhslén on 2021-11-18.
//

import SwiftUI

struct Marker: View {
    @EnvironmentObject var theViewModel : NbackVM

    var marker : Int
    var id : Int
    
    var body: some View {
        Button {
            theViewModel.aMove(position: id)
        } label: {
            if(marker == 1 || marker == 2){
                Circle().stroke(Color(.red), lineWidth: 10)
            }else{
                Rectangle().fill(Color(.white))
            }
        }
        .frame(width: 75, height: 75, alignment: .center)
    }
}


struct Marker_Previews: PreviewProvider {
    static var previews: some View {
        Marker(marker: 2, id: 1)
            .environmentObject(NbackVM())
    }
}
