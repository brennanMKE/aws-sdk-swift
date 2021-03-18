// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeUserPoolDomainInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case domain = "Domain"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let domain = domain {
            try container.encode(domain, forKey: .domain)
        }
    }
}
