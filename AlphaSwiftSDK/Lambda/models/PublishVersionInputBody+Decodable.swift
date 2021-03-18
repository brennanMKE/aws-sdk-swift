// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct PublishVersionInputBody: Equatable {
    public let codeSha256: String?
    public let description: String?
    public let revisionId: String?
}

extension PublishVersionInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case codeSha256 = "CodeSha256"
        case description = "Description"
        case revisionId = "RevisionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeSha256Decoded = try containerValues.decodeIfPresent(String.self, forKey: .codeSha256)
        codeSha256 = codeSha256Decoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
    }
}
