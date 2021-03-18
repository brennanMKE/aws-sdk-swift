// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <p>AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets
       has no available IP addresses.</p>
 */
public struct SubnetIPAddressLimitReachedException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .server
    public var message: String?
    public var type: String?

    public init (
        message: String? = nil,
        type: String? = nil
    )
    {
        self.message = message
        self.type = type
    }
}
