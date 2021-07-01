// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateContactWithAddressBookInputBody: Equatable {
    public let contactArn: String?
    public let addressBookArn: String?
}

extension AssociateContactWithAddressBookInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case addressBookArn = "AddressBookArn"
        case contactArn = "ContactArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contactArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contactArn)
        contactArn = contactArnDecoded
        let addressBookArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .addressBookArn)
        addressBookArn = addressBookArnDecoded
    }
}