import Ignite

struct HeaderLink: HTML {
    var text: String
    var path: String

    var body: some HTML {
        Text {
            Link(text, target: path)
                .role(.none) // removes underline
        }
        .font(.title1)
        .fontWeight(.bold)
        .foregroundStyle(.primary)
    }
}
