// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateThemeAliasInputBody: Equatable {
    public let themeVersionNumber: Int?
}

extension CreateThemeAliasInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case themeVersionNumber = "ThemeVersionNumber"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let themeVersionNumberDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .themeVersionNumber)
        themeVersionNumber = themeVersionNumberDecoded
    }
}