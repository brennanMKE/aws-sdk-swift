// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct CreateCodeSigningConfigInputBody: Equatable {
    public let description: String?
    public let allowedPublishers: AllowedPublishers?
    public let codeSigningPolicies: CodeSigningPolicies?
}

extension CreateCodeSigningConfigInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case allowedPublishers = "AllowedPublishers"
        case codeSigningPolicies = "CodeSigningPolicies"
        case description = "Description"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let allowedPublishersDecoded = try containerValues.decodeIfPresent(AllowedPublishers.self, forKey: .allowedPublishers)
        allowedPublishers = allowedPublishersDecoded
        let codeSigningPoliciesDecoded = try containerValues.decodeIfPresent(CodeSigningPolicies.self, forKey: .codeSigningPolicies)
        codeSigningPolicies = codeSigningPoliciesDecoded
    }
}
