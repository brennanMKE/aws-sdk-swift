// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListIPSetsOutputError: Equatable {
    case wAFInternalErrorException(WAFInternalErrorException)
    case wAFInvalidAccountException(WAFInvalidAccountException)
    case unknown(UnknownAWSHttpServiceError)
}