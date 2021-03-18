// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ListDevicesInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case limit = "Limit"
        case paginationToken = "PaginationToken"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try container.encode(accessToken, forKey: .accessToken)
        }
        if let limit = limit {
            try container.encode(limit, forKey: .limit)
        }
        if let paginationToken = paginationToken {
            try container.encode(paginationToken, forKey: .paginationToken)
        }
    }
}
