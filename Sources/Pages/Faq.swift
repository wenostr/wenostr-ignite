import Ignite

struct Faq: StaticPage {
    var title = "WeNostr - FAQ"
    // var description = "All blog posts."
    // var image: URL? = URL(static: Constants.staticProfileImagePath)

    var body: some HTML {
        HeaderText("FAQ", size: .h2)

        Text("What is nostr?").font(.title3)
        Text(markdown: "See e.g.: [nostr.org](http://ostr.org) or [ostr.how](http://ostr.how) for detailed explanation.")

        Text("When will the app launch?").font(.title3)
        Text("Soon...")
    }
}
