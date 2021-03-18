// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct StopUserImportJobInputBody: Equatable {
    public let userPoolId: String?
    public let jobId: String?
}

extension StopUserImportJobInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case jobId = "JobId"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let jobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobId)
        jobId = jobIdDecoded
    }
}
