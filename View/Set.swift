import SwiftUI

class Set: ObservableObject
{
    @Published var time = 1.0
    @Published var count = 20
    @Published var visual = false
    @Published var audio = true
    
}
