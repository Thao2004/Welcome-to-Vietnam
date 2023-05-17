import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        NavigationView {
            HomeView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            let sound = Bundle.main.path(forResource: "music", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            self.audioPlayer.play()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
           .previewInterfaceOrientation(.portrait)
           .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
   }
}

