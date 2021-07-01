// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CompleteLayerUploadOutputError: Equatable {
    case emptyUploadException(EmptyUploadException)
    case invalidLayerException(InvalidLayerException)
    case invalidParameterException(InvalidParameterException)
    case kmsException(KmsException)
    case layerAlreadyExistsException(LayerAlreadyExistsException)
    case layerPartTooSmallException(LayerPartTooSmallException)
    case repositoryNotFoundException(RepositoryNotFoundException)
    case serverException(ServerException)
    case uploadNotFoundException(UploadNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}