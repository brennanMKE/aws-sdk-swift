// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeCodeReviewOutputResponseBody: Equatable {
    public let codeReview: CodeReview?
}

extension DescribeCodeReviewOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case codeReview = "CodeReview"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeReviewDecoded = try containerValues.decodeIfPresent(CodeReview.self, forKey: .codeReview)
        codeReview = codeReviewDecoded
    }
}