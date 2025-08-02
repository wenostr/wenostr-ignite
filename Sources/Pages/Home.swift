import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("WeNostr")
            .font(.title1)
    }
}
