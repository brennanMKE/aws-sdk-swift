// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeTextTranslationJobOutputResponseBody: Equatable {
    public let textTranslationJobProperties: TextTranslationJobProperties?
}

extension DescribeTextTranslationJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case textTranslationJobProperties = "TextTranslationJobProperties"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let textTranslationJobPropertiesDecoded = try containerValues.decodeIfPresent(TextTranslationJobProperties.self, forKey: .textTranslationJobProperties)
        textTranslationJobProperties = textTranslationJobPropertiesDecoded
    }
}