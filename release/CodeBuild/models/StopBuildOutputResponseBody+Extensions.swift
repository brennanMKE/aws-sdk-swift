// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopBuildOutputResponseBody: Equatable {
    public let build: Build?
}

extension StopBuildOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case build
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let buildDecoded = try containerValues.decodeIfPresent(Build.self, forKey: .build)
        build = buildDecoded
    }
}