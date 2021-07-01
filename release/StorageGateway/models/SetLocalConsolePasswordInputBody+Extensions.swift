// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SetLocalConsolePasswordInputBody: Equatable {
    public let gatewayARN: String?
    public let localConsolePassword: String?
}

extension SetLocalConsolePasswordInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case gatewayARN = "GatewayARN"
        case localConsolePassword = "LocalConsolePassword"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
        let localConsolePasswordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .localConsolePassword)
        localConsolePassword = localConsolePasswordDecoded
    }
}