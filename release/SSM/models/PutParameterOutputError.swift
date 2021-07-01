// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutParameterOutputError: Equatable {
    case hierarchyLevelLimitExceededException(HierarchyLevelLimitExceededException)
    case hierarchyTypeMismatchException(HierarchyTypeMismatchException)
    case incompatiblePolicyException(IncompatiblePolicyException)
    case internalServerError(InternalServerError)
    case invalidAllowedPatternException(InvalidAllowedPatternException)
    case invalidKeyId(InvalidKeyId)
    case invalidPolicyAttributeException(InvalidPolicyAttributeException)
    case invalidPolicyTypeException(InvalidPolicyTypeException)
    case parameterAlreadyExists(ParameterAlreadyExists)
    case parameterLimitExceeded(ParameterLimitExceeded)
    case parameterMaxVersionLimitExceeded(ParameterMaxVersionLimitExceeded)
    case parameterPatternMismatchException(ParameterPatternMismatchException)
    case policiesLimitExceededException(PoliciesLimitExceededException)
    case tooManyUpdates(TooManyUpdates)
    case unsupportedParameterType(UnsupportedParameterType)
    case unknown(UnknownAWSHttpServiceError)
}