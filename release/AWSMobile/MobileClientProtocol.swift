// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources.
public protocol MobileClientProtocol {
    /// Creates an AWS Mobile Hub project.
    func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
    /// Delets a project in AWS Mobile Hub.
    func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
    /// Get the bundle details for the requested bundle id.
    func describeBundle(input: DescribeBundleInput, completion: @escaping (ClientRuntime.SdkResult<DescribeBundleOutputResponse, DescribeBundleOutputError>) -> Void)
    /// Gets details about a project in AWS Mobile Hub.
    func describeProject(input: DescribeProjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
    /// Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources.
    func exportBundle(input: ExportBundleInput, completion: @escaping (ClientRuntime.SdkResult<ExportBundleOutputResponse, ExportBundleOutputError>) -> Void)
    /// Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account.
    func exportProject(input: ExportProjectInput, completion: @escaping (ClientRuntime.SdkResult<ExportProjectOutputResponse, ExportProjectOutputError>) -> Void)
    /// List all available bundles.
    func listBundles(input: ListBundlesInput, completion: @escaping (ClientRuntime.SdkResult<ListBundlesOutputResponse, ListBundlesOutputError>) -> Void)
    /// Lists projects in AWS Mobile Hub.
    func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
    /// Update an existing project.
    func updateProject(input: UpdateProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
}

public enum MobileClientTypes {}
