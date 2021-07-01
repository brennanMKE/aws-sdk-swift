// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteRuleGroupOutputError: Equatable {
    case wAFInternalErrorException(WAFInternalErrorException)
    case wAFInvalidOperationException(WAFInvalidOperationException)
    case wAFNonEmptyEntityException(WAFNonEmptyEntityException)
    case wAFNonexistentItemException(WAFNonexistentItemException)
    case wAFReferencedItemException(WAFReferencedItemException)
    case wAFStaleDataException(WAFStaleDataException)
    case wAFTagOperationException(WAFTagOperationException)
    case wAFTagOperationInternalErrorException(WAFTagOperationInternalErrorException)
    case unknown(UnknownAWSHttpServiceError)
}