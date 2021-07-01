// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSupportedPhoneNumberCountriesOutputResponse: Equatable {
    /// <p>The supported phone number countries.</p>
    public let phoneNumberCountries: [PhoneNumberCountry]?

    public init (
        phoneNumberCountries: [PhoneNumberCountry]? = nil
    )
    {
        self.phoneNumberCountries = phoneNumberCountries
    }
}

extension ListSupportedPhoneNumberCountriesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSupportedPhoneNumberCountriesOutputResponse(phoneNumberCountries: \(String(describing: phoneNumberCountries)))"}
}