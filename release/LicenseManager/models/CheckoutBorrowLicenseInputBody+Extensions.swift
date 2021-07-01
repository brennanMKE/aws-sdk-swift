// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CheckoutBorrowLicenseInputBody: Equatable {
    public let licenseArn: String?
    public let entitlements: [EntitlementData]?
    public let digitalSignatureMethod: DigitalSignatureMethod?
    public let nodeId: String?
    public let checkoutMetadata: [Metadata]?
    public let clientToken: String?
}

extension CheckoutBorrowLicenseInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case checkoutMetadata = "CheckoutMetadata"
        case clientToken = "ClientToken"
        case digitalSignatureMethod = "DigitalSignatureMethod"
        case entitlements = "Entitlements"
        case licenseArn = "LicenseArn"
        case nodeId = "NodeId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let licenseArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .licenseArn)
        licenseArn = licenseArnDecoded
        let entitlementsContainer = try containerValues.decodeIfPresent([EntitlementData?].self, forKey: .entitlements)
        var entitlementsDecoded0:[EntitlementData]? = nil
        if let entitlementsContainer = entitlementsContainer {
            entitlementsDecoded0 = [EntitlementData]()
            for structure0 in entitlementsContainer {
                if let structure0 = structure0 {
                    entitlementsDecoded0?.append(structure0)
                }
            }
        }
        entitlements = entitlementsDecoded0
        let digitalSignatureMethodDecoded = try containerValues.decodeIfPresent(DigitalSignatureMethod.self, forKey: .digitalSignatureMethod)
        digitalSignatureMethod = digitalSignatureMethodDecoded
        let nodeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nodeId)
        nodeId = nodeIdDecoded
        let checkoutMetadataContainer = try containerValues.decodeIfPresent([Metadata?].self, forKey: .checkoutMetadata)
        var checkoutMetadataDecoded0:[Metadata]? = nil
        if let checkoutMetadataContainer = checkoutMetadataContainer {
            checkoutMetadataDecoded0 = [Metadata]()
            for structure0 in checkoutMetadataContainer {
                if let structure0 = structure0 {
                    checkoutMetadataDecoded0?.append(structure0)
                }
            }
        }
        checkoutMetadata = checkoutMetadataDecoded0
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}