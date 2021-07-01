// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteThemeAliasOutputResponseBody: Equatable {
    public let aliasName: String?
    public let arn: String?
    public let requestId: String?
    public let status: Int
    public let themeId: String?
}

extension DeleteThemeAliasOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aliasName = "AliasName"
        case arn = "Arn"
        case requestId = "RequestId"
        case status = "Status"
        case themeId = "ThemeId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aliasNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aliasName)
        aliasName = aliasNameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let statusDecoded = try containerValues.decode(Int.self, forKey: .status)
        status = statusDecoded
        let themeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .themeId)
        themeId = themeIdDecoded
    }
}