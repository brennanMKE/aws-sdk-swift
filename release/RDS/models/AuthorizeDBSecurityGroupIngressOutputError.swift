// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AuthorizeDBSecurityGroupIngressOutputError: Equatable {
    case authorizationAlreadyExistsFault(AuthorizationAlreadyExistsFault)
    case authorizationQuotaExceededFault(AuthorizationQuotaExceededFault)
    case dBSecurityGroupNotFoundFault(DBSecurityGroupNotFoundFault)
    case invalidDBSecurityGroupStateFault(InvalidDBSecurityGroupStateFault)
    case unknown(UnknownAWSHttpServiceError)
}