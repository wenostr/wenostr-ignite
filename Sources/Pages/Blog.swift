import Ignite

struct Blog: StaticPage {
    @Environment(\.articles) var articles

    var title = "WeNostr - Blog"
    var description = "All blog posts."
    // var image: URL? = URL(static: Constants.staticProfileImagePath)

    var sortedArticles: [Article] {
        articles.all.sorted(by: \.date).reversed()
    }

    var body: some HTML {
        HeaderText("Blog", size: .h2)
        if sortedArticles.isEmpty {
            SubheaderText("Nothing posted yet. Subscribe to [RSS feed](/feed.rss).")
                .padding(.bottom)
        } else {
            SubheaderText("All blog posts. Subscribe to [RSS feed](/feed.rss).")
                .padding(.bottom)
        }

        ForEach(sortedArticles) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }
    }
}
