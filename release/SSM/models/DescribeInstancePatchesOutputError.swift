// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeInstancePatchesOutputError: Equatable {
    case internalServerError(InternalServerError)
    case invalidFilter(InvalidFilter)
    case invalidInstanceId(InvalidInstanceId)
    case invalidNextToken(InvalidNextToken)
    case unknown(UnknownAWSHttpServiceError)
}