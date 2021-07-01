// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetXssMatchSetInputBody: Equatable {
    public let xssMatchSetId: String?
}

extension GetXssMatchSetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case xssMatchSetId = "XssMatchSetId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let xssMatchSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .xssMatchSetId)
        xssMatchSetId = xssMatchSetIdDecoded
    }
}