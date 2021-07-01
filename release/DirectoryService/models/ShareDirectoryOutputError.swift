// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ShareDirectoryOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case clientException(ClientException)
    case directoryAlreadySharedException(DirectoryAlreadySharedException)
    case entityDoesNotExistException(EntityDoesNotExistException)
    case invalidParameterException(InvalidParameterException)
    case invalidTargetException(InvalidTargetException)
    case organizationsException(OrganizationsException)
    case serviceException(ServiceException)
    case shareLimitExceededException(ShareLimitExceededException)
    case unsupportedOperationException(UnsupportedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}