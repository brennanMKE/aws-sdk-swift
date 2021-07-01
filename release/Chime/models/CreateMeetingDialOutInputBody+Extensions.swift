// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateMeetingDialOutInputBody: Equatable {
    public let fromPhoneNumber: String?
    public let toPhoneNumber: String?
    public let joinToken: String?
}

extension CreateMeetingDialOutInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fromPhoneNumber = "FromPhoneNumber"
        case joinToken = "JoinToken"
        case toPhoneNumber = "ToPhoneNumber"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fromPhoneNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fromPhoneNumber)
        fromPhoneNumber = fromPhoneNumberDecoded
        let toPhoneNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .toPhoneNumber)
        toPhoneNumber = toPhoneNumberDecoded
        let joinTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .joinToken)
        joinToken = joinTokenDecoded
    }
}