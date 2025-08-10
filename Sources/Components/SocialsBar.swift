import Ignite

struct SocialsBar: HTML {
    let socials: [SocialProfile] = [
        SocialProfile(
            url: Constants.githubUrl,
            icon: "github",
            iconDescription: "The GitHub icon from Bootstrap",
            lightModeColor: "#000000",
            darkModeColor: "#ffffff"
        ),
        SocialProfile(
            url: Constants.mailToUrl,
            icon: "envelope",
            iconDescription: "The envelope icon from Bootstrap",
            lightModeColor: "#6b7280",
            darkModeColor: "#9CA3AF"
        ),
    ]

    var body: some HTML {
        HStack {
            for profile in socials {
                Group {
                    Link(
                        Image(systemName: profile.icon, description: profile.iconDescription),
                        target: profile.url
                    )
                }
                .margin(.trailing, 9)
                .style(.color, "light-dark(\(profile.lightModeColor), \(profile.darkModeColor))")
                .font(.title5)
            }
            Link("RSS", target: "/feed.rss")
                .role(.none) // removes underline
        }
    }
}
