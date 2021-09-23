// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon Elastic Container Registry Public</fullname>
///          Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Amazon ECR provides both
///          public and private registries to host your container images. You can use the familiar
///          Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a
///          secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI)
///          images. Amazon ECR supports public repositories with this API. For information about the Amazon ECR
///          API for private repositories, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html">Amazon Elastic Container Registry API Reference.
public protocol EcrPublicClientProtocol {
    /// Checks the availability of one or more image layers within a repository in a public
    ///          registry. When an image is pushed to a repository, each image layer is checked to verify if
    ///          it has been uploaded before. If it has been uploaded, then the image layer is
    ///          skipped.
    ///
    ///             This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    ///
    func batchCheckLayerAvailability(input: BatchCheckLayerAvailabilityInput, completion: @escaping (ClientRuntime.SdkResult<BatchCheckLayerAvailabilityOutputResponse, BatchCheckLayerAvailabilityOutputError>) -> Void)
    /// Deletes a list of specified images within a repository in a public registry. Images are
    ///          specified with either an imageTag or imageDigest.
    ///          You can remove a tag from an image by specifying the image's tag in your request. When
    ///          you remove the last tag from an image, the image is deleted from your repository.
    ///          You can completely delete an image (and all of its tags) by specifying the image's
    ///          digest in your request.
    func batchDeleteImage(input: BatchDeleteImageInput, completion: @escaping (ClientRuntime.SdkResult<BatchDeleteImageOutputResponse, BatchDeleteImageOutputError>) -> Void)
    /// Informs Amazon ECR that the image layer upload has completed for a specified public registry,
    ///          repository name, and upload ID. You can optionally provide a sha256 digest of
    ///          the image layer for data validation purposes.
    ///          When an image is pushed, the CompleteLayerUpload API is called once per each new image
    ///          layer to verify that the upload has completed.
    ///
    ///             This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    ///
    func completeLayerUpload(input: CompleteLayerUploadInput, completion: @escaping (ClientRuntime.SdkResult<CompleteLayerUploadOutputResponse, CompleteLayerUploadOutputError>) -> Void)
    /// Creates a repository in a public registry. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR
    ///             repositories in the Amazon Elastic Container Registry User Guide.
    func createRepository(input: CreateRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<CreateRepositoryOutputResponse, CreateRepositoryOutputError>) -> Void)
    /// Deletes a repository in a public registry. If the repository contains images, you must
    ///          either delete all images in the repository or use the force option which
    ///          deletes all images on your behalf before deleting the repository.
    func deleteRepository(input: DeleteRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRepositoryOutputResponse, DeleteRepositoryOutputError>) -> Void)
    /// Deletes the repository policy associated with the specified repository.
    func deleteRepositoryPolicy(input: DeleteRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRepositoryPolicyOutputResponse, DeleteRepositoryPolicyOutputError>) -> Void)
    /// Returns metadata about the images in a repository in a public registry.
    ///
    ///             Beginning with Docker version 1.9, the Docker client compresses image layers before
    ///             pushing them to a V2 Docker registry. The output of the docker images
    ///             command shows the uncompressed image size, so it may return a larger image size than the
    ///             image sizes returned by DescribeImages.
    ///
    func describeImages(input: DescribeImagesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeImagesOutputResponse, DescribeImagesOutputError>) -> Void)
    /// Returns the image tag details for a repository in a public registry.
    func describeImageTags(input: DescribeImageTagsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeImageTagsOutputResponse, DescribeImageTagsOutputError>) -> Void)
    /// Returns details for a public registry.
    func describeRegistries(input: DescribeRegistriesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRegistriesOutputResponse, DescribeRegistriesOutputError>) -> Void)
    /// Describes repositories in a public registry.
    func describeRepositories(input: DescribeRepositoriesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRepositoriesOutputResponse, DescribeRepositoriesOutputError>) -> Void)
    /// Retrieves an authorization token. An authorization token represents your IAM
    ///          authentication credentials and can be used to access any Amazon ECR registry that your IAM
    ///          principal has access to. The authorization token is valid for 12 hours. This API requires
    ///          the ecr-public:GetAuthorizationToken and
    ///             sts:GetServiceBearerToken permissions.
    func getAuthorizationToken(input: GetAuthorizationTokenInput, completion: @escaping (ClientRuntime.SdkResult<GetAuthorizationTokenOutputResponse, GetAuthorizationTokenOutputError>) -> Void)
    /// Retrieves catalog metadata for a public registry.
    func getRegistryCatalogData(input: GetRegistryCatalogDataInput, completion: @escaping (ClientRuntime.SdkResult<GetRegistryCatalogDataOutputResponse, GetRegistryCatalogDataOutputError>) -> Void)
    /// Retrieve catalog metadata for a repository in a public registry. This metadata is
    ///          displayed publicly in the Amazon ECR Public Gallery.
    func getRepositoryCatalogData(input: GetRepositoryCatalogDataInput, completion: @escaping (ClientRuntime.SdkResult<GetRepositoryCatalogDataOutputResponse, GetRepositoryCatalogDataOutputError>) -> Void)
    /// Retrieves the repository policy for the specified repository.
    func getRepositoryPolicy(input: GetRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetRepositoryPolicyOutputResponse, GetRepositoryPolicyOutputError>) -> Void)
    /// Notifies Amazon ECR that you intend to upload an image layer.
    ///          When an image is pushed, the InitiateLayerUpload API is called once per image layer that
    ///          has not already been uploaded. Whether or not an image layer has been uploaded is
    ///          determined by the BatchCheckLayerAvailability API action.
    ///
    ///             This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    ///
    func initiateLayerUpload(input: InitiateLayerUploadInput, completion: @escaping (ClientRuntime.SdkResult<InitiateLayerUploadOutputResponse, InitiateLayerUploadOutputError>) -> Void)
    /// List the tags for an Amazon ECR Public resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Creates or updates the image manifest and tags associated with an image.
    ///          When an image is pushed and all new image layers have been uploaded, the PutImage API is
    ///          called once to create or update the image manifest and the tags associated with the
    ///          image.
    ///
    ///
    ///             This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    ///
    func putImage(input: PutImageInput, completion: @escaping (ClientRuntime.SdkResult<PutImageOutputResponse, PutImageOutputError>) -> Void)
    /// Create or updates the catalog data for a public registry.
    func putRegistryCatalogData(input: PutRegistryCatalogDataInput, completion: @escaping (ClientRuntime.SdkResult<PutRegistryCatalogDataOutputResponse, PutRegistryCatalogDataOutputError>) -> Void)
    /// Creates or updates the catalog data for a repository in a public registry.
    func putRepositoryCatalogData(input: PutRepositoryCatalogDataInput, completion: @escaping (ClientRuntime.SdkResult<PutRepositoryCatalogDataOutputResponse, PutRepositoryCatalogDataOutputError>) -> Void)
    /// Applies a repository policy to the specified public repository to control access
    ///          permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    ///             Policies in the Amazon Elastic Container Registry User Guide.
    func setRepositoryPolicy(input: SetRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<SetRepositoryPolicyOutputResponse, SetRepositoryPolicyOutputError>) -> Void)
    /// Associates the specified tags to a resource with the specified resourceArn.
    ///          If existing tags on a resource are not specified in the request parameters, they are not
    ///          changed. When a resource is deleted, the tags associated with that resource are deleted as
    ///          well.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Deletes specified tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Uploads an image layer part to Amazon ECR.
    ///          When an image is pushed, each new image layer is uploaded in parts. The maximum size of
    ///          each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is
    ///          called once per each new image layer part.
    ///
    ///             This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    ///
    func uploadLayerPart(input: UploadLayerPartInput, completion: @escaping (ClientRuntime.SdkResult<UploadLayerPartOutputResponse, UploadLayerPartOutputError>) -> Void)
}

public enum EcrPublicClientTypes {}
