// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>At least one of your specified cluster subnets is in an Availability Zone that does
///             not support Amazon EKS. The exception output specifies the supported Availability Zones for
///             your account, from which you can choose subnets for your cluster.</p>
public struct UnsupportedAvailabilityZoneException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The Amazon EKS cluster associated with the exception.</p>
    public var clusterName: String?
    public var message: String?
    /// <p>The Amazon EKS managed node group associated with the exception.</p>
    public var nodegroupName: String?
    /// <p>The supported Availability Zones for your account. Choose subnets in these
    ///             Availability Zones for your cluster.</p>
    public var validZones: [String]?

    public init (
        clusterName: String? = nil,
        message: String? = nil,
        nodegroupName: String? = nil,
        validZones: [String]? = nil
    )
    {
        self.clusterName = clusterName
        self.message = message
        self.nodegroupName = nodegroupName
        self.validZones = validZones
    }
}

extension UnsupportedAvailabilityZoneException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UnsupportedAvailabilityZoneException(clusterName: \(String(describing: clusterName)), message: \(String(describing: message)), nodegroupName: \(String(describing: nodegroupName)), validZones: \(String(describing: validZones)))"}
}