// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DisableLDAPSOutputError: Equatable {
    case clientException(ClientException)
    case directoryDoesNotExistException(DirectoryDoesNotExistException)
    case directoryUnavailableException(DirectoryUnavailableException)
    case invalidLDAPSStatusException(InvalidLDAPSStatusException)
    case invalidParameterException(InvalidParameterException)
    case serviceException(ServiceException)
    case unsupportedOperationException(UnsupportedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}