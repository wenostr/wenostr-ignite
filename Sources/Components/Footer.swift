import Foundation
import Ignite

struct Footer: HTML {
    let year = Calendar.current.component(.year, from: Date())

    var body: some HTML {
        VStack(spacing: 8) {
            Text {
                "© 2025 The WeNostr authors - "
                Link("Privacy", target: "/privacy")
                    .role(.none)
                " - "
                Link("Open source", target: Constants.githubUrl)
                    .role(.none)
                    .target(.newWindow)
                    .relationship(.noOpener)
            }
            .foregroundStyle(.secondary)
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
