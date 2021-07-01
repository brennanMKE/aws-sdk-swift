// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetLicenseOutputResponse: Equatable {
    /// <p>License details.</p>
    public let license: License?

    public init (
        license: License? = nil
    )
    {
        self.license = license
    }
}

extension GetLicenseOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetLicenseOutputResponse(license: \(String(describing: license)))"}
}