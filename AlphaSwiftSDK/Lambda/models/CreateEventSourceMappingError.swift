// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateEventSourceMappingError {
    case invalidParameterValueException(InvalidParameterValueException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceException(ServiceException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}
