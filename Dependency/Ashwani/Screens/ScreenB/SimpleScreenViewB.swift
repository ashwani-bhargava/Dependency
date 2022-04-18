
import SwiftUI

struct SimpleScreenViewB: View {
    
    @ObservedObject var observer: ObservableB
    
    private var actionNames: [String]
    
    init(actionNames: [String], observer: ObservableB) {
        self.actionNames = actionNames
        self.observer = observer
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0 ..< actionNames.count) { index in
                    Button(action: {
                        observer.performAction(named: actionNames[index])
                    }) {
                        HStack {
                            Text(actionNames[index])
                            Spacer()
                        }.padding().border(Color.gray, width: 1)
                    }
                }
            }.padding()
        }
            
    }
    
}
