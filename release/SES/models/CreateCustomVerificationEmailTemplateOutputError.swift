// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateCustomVerificationEmailTemplateOutputError: Equatable {
    case customVerificationEmailInvalidContentException(CustomVerificationEmailInvalidContentException)
    case customVerificationEmailTemplateAlreadyExistsException(CustomVerificationEmailTemplateAlreadyExistsException)
    case fromEmailAddressNotVerifiedException(FromEmailAddressNotVerifiedException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}