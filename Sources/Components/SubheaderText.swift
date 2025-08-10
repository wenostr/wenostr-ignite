import Ignite

struct SubheaderText: HTML {
    let text: String

    init(_ text: String) {
        self.text = text
    }

    var body: some HTML {
        Text(markdown: "*\(text)*")
            .font(.title5)
            .foregroundStyle(.secondary)
            .fontWeight(.regular)
            .lineSpacing(1.5)
    }
}
