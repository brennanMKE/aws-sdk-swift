// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLocalDisksOutputResponseBody: Equatable {
    public let gatewayARN: String?
    public let disks: [Disk]?
}

extension ListLocalDisksOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case disks = "Disks"
        case gatewayARN = "GatewayARN"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
        let disksContainer = try containerValues.decodeIfPresent([Disk?].self, forKey: .disks)
        var disksDecoded0:[Disk]? = nil
        if let disksContainer = disksContainer {
            disksDecoded0 = [Disk]()
            for structure0 in disksContainer {
                if let structure0 = structure0 {
                    disksDecoded0?.append(structure0)
                }
            }
        }
        disks = disksDecoded0
    }
}