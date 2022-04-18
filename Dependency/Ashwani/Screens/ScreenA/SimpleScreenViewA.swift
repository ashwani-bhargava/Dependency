
import SwiftUI

struct SimpleScreenViewA: View {
    
    @ObservedObject var observer: ObservableA
    
    private var actionNames: [ViewAActions]
    
    init(actionNames: [ViewAActions], observer: ObservableA) {
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
                            Text(actionNames[index].rawValue)
                            Spacer()
                        }.padding().border(Color.gray, width: 1)
                    }
                }
            }.padding()
        }   
    }
    
}
