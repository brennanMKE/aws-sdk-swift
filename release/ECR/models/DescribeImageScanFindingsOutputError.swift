// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeImageScanFindingsOutputError: Equatable {
    case imageNotFoundException(ImageNotFoundException)
    case invalidParameterException(InvalidParameterException)
    case repositoryNotFoundException(RepositoryNotFoundException)
    case scanNotFoundException(ScanNotFoundException)
    case serverException(ServerException)
    case unknown(UnknownAWSHttpServiceError)
}