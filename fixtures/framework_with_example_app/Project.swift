import ProjectDescription

let project = Project(
    name: "ExampleApp",
    targets: [
        .target(
            name: "ExampleApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ExampleApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ]
                ]
            ),
            sources: ["ExampleApp/Sources/**"],
            resources: ["ExampleApp/Resources/**"],
            dependencies: [
                .external(name: "Framework")
            ]
        ),
        .target(
            name: "ExampleAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ExampleAppTests",
            infoPlist: .default,
            sources: ["ExampleApp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ExampleApp")]
        ),
    ]
)
