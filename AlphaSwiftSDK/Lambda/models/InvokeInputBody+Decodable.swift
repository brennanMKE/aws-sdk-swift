// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct InvokeInputBody: Equatable {
    public let payload: Data?
}

extension InvokeInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case payload = "Payload"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let payloadDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .payload)
        payload = payloadDecoded
    }
}
