import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles

    var title = "WeNostr - Home"
    var description = "Home page"
        // var image: URL? = URL(static: Constants.staticProfileImagePath)

    var mostRecent4Articles: [Article] {
        articles.all.sorted(by: \.date).suffix(4).reversed()
    }

    var body: some HTML {
        Image("/images/wenostr-logo-nobg.png", description: "WeNostr logo")
            .resizable()
            .cornerRadius(16)
            .frame(maxWidth: Constants.defaultImageMaxWidth)
            .margin(.top, 4)
            .margin(.bottom, 16)

        Text {
            "More info and app available soon..."
        }

        if !mostRecent4Articles.isEmpty {
            HeaderText("Latest blog posts", size: .h3)
                .padding(.top, 8)

            ForEach(mostRecent4Articles) { article in
                ArticlePreview(for: article)
                    .articlePreviewStyle(DynamicArticlePreviewStyle())
            }

            Badge(name: "All blog posts", size: .title5, path: "/blog")
                .padding(.top)
        }
    }
}
