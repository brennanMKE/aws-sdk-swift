// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateConnectivityInfoInputBody: Equatable {
    public let connectivityInfo: [ConnectivityInfo]?
}

extension UpdateConnectivityInfoInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectivityInfo = "ConnectivityInfo"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectivityInfoContainer = try containerValues.decodeIfPresent([ConnectivityInfo?].self, forKey: .connectivityInfo)
        var connectivityInfoDecoded0:[ConnectivityInfo]? = nil
        if let connectivityInfoContainer = connectivityInfoContainer {
            connectivityInfoDecoded0 = [ConnectivityInfo]()
            for structure0 in connectivityInfoContainer {
                if let structure0 = structure0 {
                    connectivityInfoDecoded0?.append(structure0)
                }
            }
        }
        connectivityInfo = connectivityInfoDecoded0
    }
}