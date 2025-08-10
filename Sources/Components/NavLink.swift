import Ignite

struct NavLink: HTML {
    let text: String
    let target: any StaticPage

    init(_ text: String, target: any StaticPage) {
        self.text = text
        self.target = target
    }

    var body: some HTML {
        Link(text, target: target)
            .role(.none) // removes underline
            .foregroundStyle(.secondary)
    }
}
