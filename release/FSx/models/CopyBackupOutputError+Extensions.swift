// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension CopyBackupOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension CopyBackupOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "BackupNotFound" : self = .backupNotFound(try BackupNotFound(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "BadRequest" : self = .badRequest(try BadRequest(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "IncompatibleParameterError" : self = .incompatibleParameterError(try IncompatibleParameterError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "IncompatibleRegionForMultiAZ" : self = .incompatibleRegionForMultiAZ(try IncompatibleRegionForMultiAZ(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServerError" : self = .internalServerError(try InternalServerError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidDestinationKmsKey" : self = .invalidDestinationKmsKey(try InvalidDestinationKmsKey(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidRegion" : self = .invalidRegion(try InvalidRegion(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidSourceKmsKey" : self = .invalidSourceKmsKey(try InvalidSourceKmsKey(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceLimitExceeded" : self = .serviceLimitExceeded(try ServiceLimitExceeded(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SourceBackupUnavailable" : self = .sourceBackupUnavailable(try SourceBackupUnavailable(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedOperation" : self = .unsupportedOperation(try UnsupportedOperation(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}