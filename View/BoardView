import SwiftUI

struct BoardView: View {
    @EnvironmentObject var theViewModel : NbackVM
    @EnvironmentObject var setter : Set
    @State var count = 20
    @State var setCount = 0
    @State var isRunning = false
    @State var timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var points = 0
    @State var visualColor = Color.blue
    @State var audioColor = Color.blue
    @State var enterSetting = true
    
    var body: some View {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        NavigationStack{
            VStack{
                
                
                
                VStack{
                    NavigationLink(destination: SettingView().environmentObject(setter), isActive: $enterSetting){
                        Text("Game Settings")
                        
                    }
                    
                }                  
                
            }
            HStack{
                Text("Rounds : ")
                Text("\(setter.count)")
                    .foregroundColor(.red)
            }
            
            
            
            HStack{
                Text("Points: ")
                Text("\(points)")
                    .foregroundColor(.red)
            }
            
            
            
            
            ZStack{
                
                BackroundView(width: 300, height: 300)
                
                ForEach(theViewModel.markers) { aMarker in
                    Marker(marker: aMarker.state, id: aMarker.id )
                        .position(x: CGFloat(50+aMarker.x*100), y: CGFloat(50+aMarker.y*100))
                }
            }
            .frame(width: 300, height: 300, alignment: .center)
            HStack{
                Button("Play"){
                    isRunning = true
                    timer = Timer.publish(every: setter.time, on: .main, in: .common).autoconnect()
                    setCount = setter.count
                }
                .foregroundColor(.green)
                //.font(.system(size: 50, weight: .bold, design: .rounded))
                Text("         |         ")
                Button("Reset"){
                    setter.count = setCount
                    points = 0
                    theViewModel.resetGame()
                    setCount = setter.count
                }
                .foregroundColor(.gray)
                //.font(.system(size: 50, weight: .bold, design: .rounded))
            }
            
            HStack{
                Button("Audio"){
                    if(theViewModel.findPoints()){
                        points += 1
                        audioColor = Color.green
                    }else{
                        audioColor = Color.red
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
                        audioColor = Color.blue
                    }
                }
                .foregroundColor(audioColor)
                .font(.system(size: 30, weight: .light, design: .serif))
                
                Text("         |         ")
                Button("Visual"){
                    if(theViewModel.findPoints()){
                        points += 1
                        visualColor = Color.green
                    }else{
                        visualColor = Color.red
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                        visualColor = Color.blue
                    }
                }
                .foregroundColor(visualColor)
                .font(.system(size: 30, weight: .light, design: .serif))
                
                .onReceive(timer){
                    _ in
                    if setter.count > 0 && isRunning{
                        setter.count -= 1
                        theViewModel.resetGame()
                        if setter.visual{
                            theViewModel.aMove(position: 1)
                            audioColor = Color.gray
                            visualColor = Color.blue
                        }else if setter.audio{
                            theViewModel.sMove(position: 1)
                            visualColor = Color.gray
                            audioColor = Color.blue
                        }
                        
                    }else{
                        isRunning = false
                        self.timer.upstream.connect().cancel()
                    }
                    
                }
            }
            
            
            
        }
    }
}


struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
            .environmentObject(NbackVM())
            .environmentObject(Set())
    }
}

