// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// With Fleet Hub for AWS IoT Device Management you can build stand-alone web applications for monitoring the health of your device fleets. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
public protocol IoTFleetHubClientProtocol {
    /// Creates a Fleet Hub for AWS IoT Device Management web application. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Deletes a Fleet Hub for AWS IoT Device Management web application. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Gets information about a Fleet Hub for AWS IoT Device Management web application. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func describeApplication(input: DescribeApplicationInput) async throws -> DescribeApplicationOutputResponse
    /// Gets a list of Fleet Hub for AWS IoT Device Management web applications for the current account. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists the tags for the specified resource. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds to or modifies the tags of the specified resource. Tags are metadata which can be used to manage a resource. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags (metadata) from the resource. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates information about a Fleet Hub for a AWS IoT Device Management web application. Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
}

public enum IoTFleetHubClientTypes {}
