// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeTrustedAdvisorCheckResultInputBody: Equatable {
    public let checkId: String?
    public let language: String?
}

extension DescribeTrustedAdvisorCheckResultInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case checkId
        case language
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let checkIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .checkId)
        checkId = checkIdDecoded
        let languageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .language)
        language = languageDecoded
    }
}