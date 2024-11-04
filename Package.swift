// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "wavpack-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "wavpack",
			targets: [
				"wavpack",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "wavpack",
			url: "https://github.com/sbooth/wavpack-binary-xcframework/releases/download/0.1.0/wavpack.xcframework.zip",
			checksum: "88fb4c750091ae64d2069701ea830494c7ed9dacba8da710da947b1ba81371c4"),
	]
)
