// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a service.</p>
public struct ServiceInfo: Equatable {
    /// <p>The service identifier.</p>
    public let serviceCode: String?
    /// <p>The service name.</p>
    public let serviceName: String?

    public init (
        serviceCode: String? = nil,
        serviceName: String? = nil
    )
    {
        self.serviceCode = serviceCode
        self.serviceName = serviceName
    }
}

extension ServiceInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ServiceInfo(serviceCode: \(String(describing: serviceCode)), serviceName: \(String(describing: serviceName)))"}
}