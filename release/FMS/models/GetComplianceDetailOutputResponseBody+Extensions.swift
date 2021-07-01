// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetComplianceDetailOutputResponseBody: Equatable {
    public let policyComplianceDetail: PolicyComplianceDetail?
}

extension GetComplianceDetailOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policyComplianceDetail = "PolicyComplianceDetail"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policyComplianceDetailDecoded = try containerValues.decodeIfPresent(PolicyComplianceDetail.self, forKey: .policyComplianceDetail)
        policyComplianceDetail = policyComplianceDetailDecoded
    }
}