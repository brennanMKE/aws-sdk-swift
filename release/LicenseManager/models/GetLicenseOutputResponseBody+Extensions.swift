// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetLicenseOutputResponseBody: Equatable {
    public let license: License?
}

extension GetLicenseOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case license = "License"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let licenseDecoded = try containerValues.decodeIfPresent(License.self, forKey: .license)
        license = licenseDecoded
    }
}