// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetRateBasedRuleManagedKeysOutputError: Equatable {
    case wAFInternalErrorException(WAFInternalErrorException)
    case wAFInvalidAccountException(WAFInvalidAccountException)
    case wAFInvalidParameterException(WAFInvalidParameterException)
    case wAFNonexistentItemException(WAFNonexistentItemException)
    case unknown(UnknownAWSHttpServiceError)
}