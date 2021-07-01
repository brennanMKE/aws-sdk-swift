// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteUserOutputError: Equatable {
    case defaultUserAssociatedToUserGroupFault(DefaultUserAssociatedToUserGroupFault)
    case invalidParameterValueException(InvalidParameterValueException)
    case invalidUserStateFault(InvalidUserStateFault)
    case userNotFoundFault(UserNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}