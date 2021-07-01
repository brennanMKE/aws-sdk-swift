// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ExtendLicenseConsumptionOutputResponse: Equatable {
    /// <p>Date and time at which the license consumption expires.</p>
    public let expiration: String?
    /// <p>License consumption token.</p>
    public let licenseConsumptionToken: String?

    public init (
        expiration: String? = nil,
        licenseConsumptionToken: String? = nil
    )
    {
        self.expiration = expiration
        self.licenseConsumptionToken = licenseConsumptionToken
    }
}

extension ExtendLicenseConsumptionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExtendLicenseConsumptionOutputResponse(expiration: \(String(describing: expiration)), licenseConsumptionToken: \(String(describing: licenseConsumptionToken)))"}
}