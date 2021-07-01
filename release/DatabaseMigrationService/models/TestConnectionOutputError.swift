// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum TestConnectionOutputError: Equatable {
    case accessDeniedFault(AccessDeniedFault)
    case invalidResourceStateFault(InvalidResourceStateFault)
    case kMSKeyNotAccessibleFault(KMSKeyNotAccessibleFault)
    case resourceNotFoundFault(ResourceNotFoundFault)
    case resourceQuotaExceededFault(ResourceQuotaExceededFault)
    case unknown(UnknownAWSHttpServiceError)
}