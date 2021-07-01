// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateNotificationSubscriptionOutputError: Equatable {
    case serviceUnavailableException(ServiceUnavailableException)
    case tooManySubscriptionsException(TooManySubscriptionsException)
    case unauthorizedResourceAccessException(UnauthorizedResourceAccessException)
    case unknown(UnknownAWSHttpServiceError)
}