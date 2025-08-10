import Ignite

struct Faq: StaticPage {
    var title = "WeNostr - FAQ"
    var description = "Frequently asked questions"
    // var image: URL? = URL(static: Constants.staticProfileImagePath)

    var body: some HTML {
        HeaderText("FAQ", size: .h2)
        SubheaderText("Available soon...")
            .padding(.bottom)
    }
}
