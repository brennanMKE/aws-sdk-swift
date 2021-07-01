// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct TestIdentityProviderInputBody: Equatable {
    public let serverId: String?
    public let serverProtocol: `Protocol`?
    public let sourceIp: String?
    public let userName: String?
    public let userPassword: String?
}

extension TestIdentityProviderInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serverId = "ServerId"
        case serverProtocol = "ServerProtocol"
        case sourceIp = "SourceIp"
        case userName = "UserName"
        case userPassword = "UserPassword"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverId)
        serverId = serverIdDecoded
        let serverProtocolDecoded = try containerValues.decodeIfPresent(`Protocol`.self, forKey: .serverProtocol)
        serverProtocol = serverProtocolDecoded
        let sourceIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceIp)
        sourceIp = sourceIpDecoded
        let userNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userName)
        userName = userNameDecoded
        let userPasswordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPassword)
        userPassword = userPasswordDecoded
    }
}