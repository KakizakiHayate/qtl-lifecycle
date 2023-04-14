import SwiftUI
import SimpleToast

struct ContentView: View {
//    @ObservedObject var toastModel = ToastModel()
    @State var showToast: Bool = false
    @State var textToast = ""
    var toastOptions = SimpleToastOptions(
        alignment: .bottom,
        hideAfter: 5
    )
    init() {
        print("init")
    }
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                NavigationLink(destination: SecondView(showToast: $showToast, textToast: $textToast)) {
                        Text("画面遷移")
                }
            }
            .onAppear {
                showToast = true
                textToast = "firstView開始"
                print(textToast)
            }
            .onDisappear {
                showToast = true
                textToast = "firstView終了"
                print(textToast)
            }
            
            .simpleToast(isPresented: $showToast, options: toastOptions) {
                HStack {
                    Image(systemName: "exclamationmark.triangle")
                    Text(textToast)

                }
                .padding()
                .background(Color.red.opacity(0.8))
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }
        }
        .onAppear {
            print("NavigationStack")
            a()
            
        }
        .onDisappear {
            print("NavigationStackDisappear")
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
