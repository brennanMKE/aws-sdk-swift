// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RemoveRegionOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case clientException(ClientException)
    case directoryDoesNotExistException(DirectoryDoesNotExistException)
    case directoryUnavailableException(DirectoryUnavailableException)
    case serviceException(ServiceException)
    case unsupportedOperationException(UnsupportedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}