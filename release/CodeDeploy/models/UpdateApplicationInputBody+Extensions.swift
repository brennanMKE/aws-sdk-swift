// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateApplicationInputBody: Equatable {
    public let applicationName: String?
    public let newApplicationName: String?
}

extension UpdateApplicationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationName
        case newApplicationName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let newApplicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .newApplicationName)
        newApplicationName = newApplicationNameDecoded
    }
}