// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteBGPPeerOutputResponseBody: Equatable {
    public let virtualInterface: VirtualInterface?
}

extension DeleteBGPPeerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case virtualInterface
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualInterfaceDecoded = try containerValues.decodeIfPresent(VirtualInterface.self, forKey: .virtualInterface)
        virtualInterface = virtualInterfaceDecoded
    }
}