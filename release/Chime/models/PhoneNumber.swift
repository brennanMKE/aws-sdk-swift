// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A phone number used for Amazon Chime Business Calling or an Amazon Chime Voice
///             Connector.</p>
public struct PhoneNumber: Equatable {
    /// <p>The phone number associations.</p>
    public let associations: [PhoneNumberAssociation]?
    /// <p>The outbound calling name associated with the phone number.</p>
    public let callingName: String?
    /// <p>The outbound calling name status.</p>
    public let callingNameStatus: CallingNameStatus?
    /// <p>The phone number capabilities.</p>
    public let capabilities: PhoneNumberCapabilities?
    /// <p>The phone number country. Format: ISO 3166-1 alpha-2.</p>
    public let country: String?
    /// <p>The phone number creation timestamp, in ISO 8601 format.</p>
    public let createdTimestamp: Date?
    /// <p>The deleted phone number timestamp, in ISO 8601 format.</p>
    public let deletionTimestamp: Date?
    /// <p>The phone number, in E.164 format.</p>
    public let e164PhoneNumber: String?
    /// <p>The phone number ID.</p>
    public let phoneNumberId: String?
    /// <p>The phone number product type.</p>
    public let productType: PhoneNumberProductType?
    /// <p>The phone number status.</p>
    public let status: PhoneNumberStatus?
    /// <p>The phone number type.</p>
    public let type: PhoneNumberType?
    /// <p>The updated phone number timestamp, in ISO 8601 format.</p>
    public let updatedTimestamp: Date?

    public init (
        associations: [PhoneNumberAssociation]? = nil,
        callingName: String? = nil,
        callingNameStatus: CallingNameStatus? = nil,
        capabilities: PhoneNumberCapabilities? = nil,
        country: String? = nil,
        createdTimestamp: Date? = nil,
        deletionTimestamp: Date? = nil,
        e164PhoneNumber: String? = nil,
        phoneNumberId: String? = nil,
        productType: PhoneNumberProductType? = nil,
        status: PhoneNumberStatus? = nil,
        type: PhoneNumberType? = nil,
        updatedTimestamp: Date? = nil
    )
    {
        self.associations = associations
        self.callingName = callingName
        self.callingNameStatus = callingNameStatus
        self.capabilities = capabilities
        self.country = country
        self.createdTimestamp = createdTimestamp
        self.deletionTimestamp = deletionTimestamp
        self.e164PhoneNumber = e164PhoneNumber
        self.phoneNumberId = phoneNumberId
        self.productType = productType
        self.status = status
        self.type = type
        self.updatedTimestamp = updatedTimestamp
    }
}

extension PhoneNumber: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PhoneNumber(associations: \(String(describing: associations)), callingName: \(String(describing: callingName)), callingNameStatus: \(String(describing: callingNameStatus)), capabilities: \(String(describing: capabilities)), country: \(String(describing: country)), createdTimestamp: \(String(describing: createdTimestamp)), deletionTimestamp: \(String(describing: deletionTimestamp)), e164PhoneNumber: \(String(describing: e164PhoneNumber)), phoneNumberId: \(String(describing: phoneNumberId)), productType: \(String(describing: productType)), status: \(String(describing: status)), type: \(String(describing: type)), updatedTimestamp: \(String(describing: updatedTimestamp)))"}
}