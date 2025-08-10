import Foundation
import Ignite

struct Footer: HTML {
    let year = Calendar.current.component(.year, from: Date())

    var body: some HTML {
        VStack(spacing: 8) {
            Text {
                "© 2025 WeNostr - Made with "
                Link("Ignite", target: "https://github.com/twostraws/Ignite")
                    .role(.none)
                " / "
                Link("Ryan Token", target: "https://github.com/r-token/ryantoken.com-v4-ignite")
                    .role(.none)
                " theme"
            }
            .foregroundStyle(.secondary)
            // SocialsBar()  // not enabling, for now !
        }
        .padding(.top, 50)
    }
}

// Text {
//             "Created in Swift with "
//             Link("Ignite", target: "https://github.com/twostraws/Ignite")
//                 .target(.newWindow)
//                 .relationship(.noOpener)
//                 .role(.none)
//         }
