// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The AWS IoT 1-Click Projects API Reference
public protocol Iot1ClickProjectsClientProtocol {
    /// Associates a physical device with a placement.
    func associateDeviceWithPlacement(input: AssociateDeviceWithPlacementInput, completion: @escaping (ClientRuntime.SdkResult<AssociateDeviceWithPlacementOutputResponse, AssociateDeviceWithPlacementOutputError>) -> Void)
    /// Creates an empty placement.
    func createPlacement(input: CreatePlacementInput, completion: @escaping (ClientRuntime.SdkResult<CreatePlacementOutputResponse, CreatePlacementOutputError>) -> Void)
    /// Creates an empty project with a placement template. A project contains zero or more
    ///       placements that adhere to the placement template defined in the project.
    func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
    /// Deletes a placement. To delete a placement, it must not have any devices associated with
    ///       it.
    ///
    ///             When you delete a placement, all associated data becomes irretrievable.
    ///
    func deletePlacement(input: DeletePlacementInput, completion: @escaping (ClientRuntime.SdkResult<DeletePlacementOutputResponse, DeletePlacementOutputError>) -> Void)
    /// Deletes a project. To delete a project, it must not have any placements associated with
    ///       it.
    ///
    ///             When you delete a project, all associated data becomes irretrievable.
    ///
    func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
    /// Describes a placement in a project.
    func describePlacement(input: DescribePlacementInput, completion: @escaping (ClientRuntime.SdkResult<DescribePlacementOutputResponse, DescribePlacementOutputError>) -> Void)
    /// Returns an object describing a project.
    func describeProject(input: DescribeProjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
    /// Removes a physical device from a placement.
    func disassociateDeviceFromPlacement(input: DisassociateDeviceFromPlacementInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateDeviceFromPlacementOutputResponse, DisassociateDeviceFromPlacementOutputError>) -> Void)
    /// Returns an object enumerating the devices in a placement.
    func getDevicesInPlacement(input: GetDevicesInPlacementInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicesInPlacementOutputResponse, GetDevicesInPlacementOutputError>) -> Void)
    /// Lists the placement(s) of a project.
    func listPlacements(input: ListPlacementsInput, completion: @escaping (ClientRuntime.SdkResult<ListPlacementsOutputResponse, ListPlacementsOutputError>) -> Void)
    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
    /// Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be
    ///       used to manage a resource. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging
    ///         Strategies.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags (metadata key/value pairs) from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates a placement with the given attributes. To clear an attribute, pass an empty value
    ///       (i.e., "").
    func updatePlacement(input: UpdatePlacementInput, completion: @escaping (ClientRuntime.SdkResult<UpdatePlacementOutputResponse, UpdatePlacementOutputError>) -> Void)
    /// Updates a project associated with your AWS account and region. With the exception of
    ///       device template names, you can pass just the values that need to be updated because the update
    ///       request will change only the values that are provided. To clear a value, pass the empty string
    ///       (i.e., "").
    func updateProject(input: UpdateProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
}

public enum Iot1ClickProjectsClientTypes {}
