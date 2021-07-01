// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteProjectVersionOutputResponseBody: Equatable {
    public let status: ProjectVersionStatus?
}

extension DeleteProjectVersionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(ProjectVersionStatus.self, forKey: .status)
        status = statusDecoded
    }
}