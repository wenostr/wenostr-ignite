import Ignite

struct NavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("FAQ", target: Faq())
            Link("Blog", target: Blog())
        } logo: {
            Span("WeNostr")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.primary)
        }
        .navigationItemAlignment(.trailing)
        .position(.fixedTop)
        .background(.regularMaterial)
    }
}
