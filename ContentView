//
//  ContentView.swift
//  TicTacToeSwiftUI
//
//  Created by Jonas Wåhslén on 2021-11-18.
//

import SwiftUI

// Our custom view modifier to track rotation and
// call our action
struct DeviceRotationViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

// A View wrapper to make the modifier easier to use
extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationViewModifier(action: action))
    }
}



struct ContentView: View {
    @EnvironmentObject var theViewModel : NbackVM
    @EnvironmentObject var set:Set
    @State private var orientation = UIDeviceOrientation.portrait

    var body: some View {
        Group{
            if orientation.isPortrait{
                VStack{
                    
                    
                    BoardView()
                    
                }
                            
            } else if orientation.isLandscape {
                HStack{
                    VStack{
                        
                        BoardView()
                        Button {
                            theViewModel.resetGame()
                        } label: {
                            Text("Reset")
                        }
                        .padding()
                    }
                    .frame(width: 300, height: 300, alignment: .center)
                    
                    
                    
                }
            }
        }
        .onRotate { newOrientation in orientation = newOrientation}
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NbackVM())
            .environmentObject(Set())
    }
}
