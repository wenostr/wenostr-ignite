import Ignite

struct ArticleLayout: ArticlePage {
    var body: some HTML {
        VStack(alignment: .leading) {
            HeaderText(article.title, size: .h2)

            if let subtitle = article.subtitle {
                Text(markdown: "*\(subtitle)*")
                    .foregroundStyle(.secondary)
            }

            Text(markdown: "*Published \(article.date.formatted(date: .abbreviated, time: .omitted))*")
                .foregroundStyle(.secondary)
                .padding(.top, 24)

            Text(markdown: "*\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.*")
                .foregroundStyle(.secondary)

            Divider()

            if let image = article.image {
                Image(image, description: article.imageDescription)
                    .resizable()
                    .cornerRadius(20)
                    .frame(maxHeight: 300)
            }

            Text(article.text)
                .padding(.top, 36)
                .class("article-content")
        }
    }
}
