import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    var name = "WeNostr"
    var titleSuffix = " – We own the Internet"
    var url = URL(static: "https://www.wenostr.com")
    var builtInIconsEnabled = true

    var author = "Roberto Saccon"

    var homePage = Home()
    var layout = MainLayout()
}
