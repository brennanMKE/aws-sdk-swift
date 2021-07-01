// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteClientVpnEndpointOutputResponseBody: Equatable {
    public let status: ClientVpnEndpointStatus?
}

extension DeleteClientVpnEndpointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case status = "status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(ClientVpnEndpointStatus.self, forKey: .status)
        status = statusDecoded
    }
}