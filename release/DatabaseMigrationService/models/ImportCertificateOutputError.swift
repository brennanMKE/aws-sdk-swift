// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ImportCertificateOutputError: Equatable {
    case invalidCertificateFault(InvalidCertificateFault)
    case resourceAlreadyExistsFault(ResourceAlreadyExistsFault)
    case resourceQuotaExceededFault(ResourceQuotaExceededFault)
    case unknown(UnknownAWSHttpServiceError)
}