// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ExecuteStatementOutputError: Equatable {
    case conditionalCheckFailedException(ConditionalCheckFailedException)
    case duplicateItemException(DuplicateItemException)
    case internalServerError(InternalServerError)
    case itemCollectionSizeLimitExceededException(ItemCollectionSizeLimitExceededException)
    case provisionedThroughputExceededException(ProvisionedThroughputExceededException)
    case requestLimitExceeded(RequestLimitExceeded)
    case resourceNotFoundException(ResourceNotFoundException)
    case transactionConflictException(TransactionConflictException)
    case unknown(UnknownAWSHttpServiceError)
}