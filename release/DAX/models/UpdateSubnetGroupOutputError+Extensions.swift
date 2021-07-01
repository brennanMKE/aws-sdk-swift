// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UpdateSubnetGroupOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension UpdateSubnetGroupOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "InvalidSubnet" : self = .invalidSubnet(try InvalidSubnet(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceLinkedRoleNotFoundFault" : self = .serviceLinkedRoleNotFoundFault(try ServiceLinkedRoleNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SubnetGroupNotFoundFault" : self = .subnetGroupNotFoundFault(try SubnetGroupNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SubnetInUse" : self = .subnetInUse(try SubnetInUse(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SubnetQuotaExceededFault" : self = .subnetQuotaExceededFault(try SubnetQuotaExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}