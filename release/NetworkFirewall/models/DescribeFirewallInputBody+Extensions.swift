// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFirewallInputBody: Equatable {
    public let firewallName: String?
    public let firewallArn: String?
}

extension DescribeFirewallInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case firewallArn = "FirewallArn"
        case firewallName = "FirewallName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let firewallNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .firewallName)
        firewallName = firewallNameDecoded
        let firewallArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .firewallArn)
        firewallArn = firewallArnDecoded
    }
}