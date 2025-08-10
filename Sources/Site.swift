import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = WeNostrSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct WeNostrSite: Site {
    var name = "WeNostrSite"
    var url = URL(static: "https://www.wenostr.com")
    var builtInIconsEnabled = true

    var author = "Roberto Saccon"

    var homePage = Home()

    var layout = MainLayout()
    var lightTheme: (any Theme)? = LightTheme()
    var darkTheme: (any Theme)? = DarkTheme()

    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 1000, path: "/feed.rss")

    var favicon: URL? { URL(static: "/favicon/favicon.ico") }

    var staticPages: [any StaticPage] {
        Home()
        News()
        Faq()
    }

    var articlePages: [any ArticlePage] {
        ArticleLayout()
    }
}
