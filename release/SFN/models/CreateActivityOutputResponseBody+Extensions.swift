// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateActivityOutputResponseBody: Equatable {
    public let activityArn: String?
    public let creationDate: Date?
}

extension CreateActivityOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case activityArn
        case creationDate
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let activityArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .activityArn)
        activityArn = activityArnDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
    }
}