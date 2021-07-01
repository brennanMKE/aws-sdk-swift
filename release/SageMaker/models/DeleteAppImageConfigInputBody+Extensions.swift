// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAppImageConfigInputBody: Equatable {
    public let appImageConfigName: String?
}

extension DeleteAppImageConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appImageConfigName = "AppImageConfigName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appImageConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appImageConfigName)
        appImageConfigName = appImageConfigNameDecoded
    }
}