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
			url: "https://github.com/sbooth/wavpack-binary-xcframework/releases/download/0.1.1/wavpack.xcframework.zip",
			checksum: "1035d943dcbf0dbb7f27b1bd4c5c8cca6782a0a71df880e03c5f335275124d05"),
	]
)
