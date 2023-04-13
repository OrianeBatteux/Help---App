import SwiftUI

struct OnboardingTaView: View {
    
    @Binding var next : Bool
    var body: some View {

        TabView {
            OnboardingView()


            OnboardingView2()


            OnboardingView3(next: $next)

        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .ignoresSafeArea(.all)

    }
}

struct OnboardingTaView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTaView(next: .constant(false))
    }
}
