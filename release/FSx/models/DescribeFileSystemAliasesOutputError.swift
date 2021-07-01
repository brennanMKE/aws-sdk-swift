// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeFileSystemAliasesOutputError: Equatable {
    case badRequest(BadRequest)
    case fileSystemNotFound(FileSystemNotFound)
    case internalServerError(InternalServerError)
    case unknown(UnknownAWSHttpServiceError)
}