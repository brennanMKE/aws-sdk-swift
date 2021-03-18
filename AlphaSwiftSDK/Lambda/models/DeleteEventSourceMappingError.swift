// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteEventSourceMappingError {
    case invalidParameterValueException(InvalidParameterValueException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceException(ServiceException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}