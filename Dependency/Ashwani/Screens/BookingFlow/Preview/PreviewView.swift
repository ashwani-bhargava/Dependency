
import Foundation
import SwiftUI

struct PreviewView: View {
    @ObservedObject var observer: ObservablePreview
    
    init(observer: ObservablePreview) {
        self.observer = observer
    }
    
    var body: some View {
        VStack{
            Button(action: {
                observer.performAction()
            }, label: {
                Text("Checkout Now")
            })
        }
    }
    
}
