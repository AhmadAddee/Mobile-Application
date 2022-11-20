
import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var set: Set

    
    var body: some View {
        VStack{
            Text("Settings")
                .font(.system(size: 50, weight: .bold, design: .rounded))
            Spacer()
            HStack{
                Text("Visual                                              ")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                Toggle(isOn: $set.visual){
                    
                }.toggleStyle(ToggleCheckboxStyles())
            }
            HStack{
                Text("Audio                                              ")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                Toggle(isOn: $set.audio){
                    
                }.toggleStyle(ToggleCheckboxStyles())
            }
            Spacer()
            HStack{
                Button("+            "){
                    self.set.count += 5
                }.font(.system(size: 50, weight: .bold, design: .rounded))
                Text("Rounds: \(set.count)")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Button("         -"){
                    self.set.count -= 5
                }.font(.system(size: 50, weight: .bold, design: .rounded))
            }
            HStack{
                Button("+            "){
                    self.set.time += 0.5
                }.font(.system(size: 50, weight: .bold, design: .rounded))
                Text("Time: \(set.time)")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                Button("         -"){
                    self.set.time -= 0.5
                }.font(.system(size: 50, weight: .bold, design: .rounded))
            }
            
        }.environmentObject(Set())
        
    }
    
}
struct ToggleCheckboxStyle: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View{
        Button{
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        
    }
}

struct ToggleCheckboxStyles: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View{
        Button{
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .environmentObject(Set())
    }
}

