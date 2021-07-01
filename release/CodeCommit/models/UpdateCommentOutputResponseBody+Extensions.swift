// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateCommentOutputResponseBody: Equatable {
    public let comment: Comment?
}

extension UpdateCommentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case comment
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let commentDecoded = try containerValues.decodeIfPresent(Comment.self, forKey: .comment)
        comment = commentDecoded
    }
}