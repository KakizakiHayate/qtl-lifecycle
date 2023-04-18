import SwiftUI
import SimpleToast

struct ContentView: View {
    // toastを表示/非表示
    @State private var showToast: Bool = false
    // toastに表示する文字を格納
    @State private var textToast = ""
    // toastを宣言
    private let const = Const.init()
    init() {
        print("init")
    }
    // MARK: - ここからbody
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
            //toast表示
            .simpleToast(isPresented: $showToast, options: const.toastOptions) {
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
        }
        .onDisappear {
            print("NavigationStackDisappear")
        }
        .padding()
    }// body
    // MARK: ここまでbody -
    
}// view

// MARK: - ここからPreview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// MARK: ここまでPreview -
