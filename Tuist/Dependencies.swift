import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager:
        SwiftPackageManagerDependencies(
            [
                .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "5.0.1")),
                .remote(url: "https://github.com/Quick/Nimble.git", requirement: .upToNextMajor(from: "10.0.0")),
                .remote(url: "https://github.com/uber/needle.git", requirement: .upToNextMajor(from: "0.19.0")),
                .remote(url: "https://github.com/realm/realm-cocoa.git", requirement: .upToNextMajor(from: "10.0.0"))
            ],
            baseSettings: .settings(
                configurations: [
                    .debug(name: .dev),
                    .debug(name: .stage),
                    .release(name: .prod)
                ]
            )
        ),
    platforms: [.iOS]
)
