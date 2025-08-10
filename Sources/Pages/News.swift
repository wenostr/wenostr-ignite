import Ignite

struct News: StaticPage {
    @Environment(\.articles) var articles

    var title = "WeNostr - News"
    var description = "All news posts."
    // var image: URL? = URL(static: Constants.staticProfileImagePath)

    var sortedArticles: [Article] {
        articles.all.sorted(by: \.date).reversed()
    }

    var body: some HTML {
        HeaderText("News", size: .h2)
        if sortedArticles.isEmpty {
            SubheaderText("No news yet. Subscribe to [RSS feed](/feed.rss).")
                .padding(.bottom)
        } else {
            SubheaderText("All news posts. Subscribe to [RSS feed](/feed.rss).")
                .padding(.bottom)
        }

        ForEach(sortedArticles) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }
    }
}
