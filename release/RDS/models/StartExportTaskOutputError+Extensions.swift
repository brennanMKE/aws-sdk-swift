// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension StartExportTaskOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension StartExportTaskOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "DBClusterSnapshotNotFoundFault" : self = .dBClusterSnapshotNotFoundFault(try DBClusterSnapshotNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBSnapshotNotFoundFault" : self = .dBSnapshotNotFoundFault(try DBSnapshotNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ExportTaskAlreadyExistsFault" : self = .exportTaskAlreadyExistsFault(try ExportTaskAlreadyExistsFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "IamRoleMissingPermissionsFault" : self = .iamRoleMissingPermissionsFault(try IamRoleMissingPermissionsFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "IamRoleNotFoundFault" : self = .iamRoleNotFoundFault(try IamRoleNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidExportOnlyFault" : self = .invalidExportOnlyFault(try InvalidExportOnlyFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidExportSourceStateFault" : self = .invalidExportSourceStateFault(try InvalidExportSourceStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidS3BucketFault" : self = .invalidS3BucketFault(try InvalidS3BucketFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "KMSKeyNotAccessibleFault" : self = .kMSKeyNotAccessibleFault(try KMSKeyNotAccessibleFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}