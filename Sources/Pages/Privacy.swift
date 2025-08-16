import Ignite

struct Privacy: StaticPage {
    var title = "WeNostr - Privacy"

    var body: some HTML {
        HeaderText("Privacy policy", size: .h2)

        Text("We do not collect any data from you.").font(.title3)
    }
}
