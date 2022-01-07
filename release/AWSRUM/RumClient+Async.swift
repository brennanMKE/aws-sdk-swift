// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension RumClient {
    /// Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM. The data includes performance and reliability information such as page load time, client-side errors, and user behavior. You use this operation only to create a new app monitor. To update an existing app monitor, use [UpdateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html) instead. After you create an app monitor, sign in to the CloudWatch RUM console to get the JavaScript code snippet to add to your web application. For more information, see [How do I find a code snippet that I've already generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
    func createAppMonitor(input: CreateAppMonitorInput) async throws -> CreateAppMonitorOutputResponse
    {
        typealias createAppMonitorContinuation = CheckedContinuation<CreateAppMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppMonitorContinuation) in
            createAppMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing app monitor. This immediately stops the collection of data.
    func deleteAppMonitor(input: DeleteAppMonitorInput) async throws -> DeleteAppMonitorOutputResponse
    {
        typealias deleteAppMonitorContinuation = CheckedContinuation<DeleteAppMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppMonitorContinuation) in
            deleteAppMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the complete configuration information for one app monitor.
    func getAppMonitor(input: GetAppMonitorInput) async throws -> GetAppMonitorOutputResponse
    {
        typealias getAppMonitorContinuation = CheckedContinuation<GetAppMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppMonitorContinuation) in
            getAppMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    func getAppMonitorData(input: GetAppMonitorDataInput) async throws -> GetAppMonitorDataOutputResponse
    {
        typealias getAppMonitorDataContinuation = CheckedContinuation<GetAppMonitorDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppMonitorDataContinuation) in
            getAppMonitorData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    func listAppMonitors(input: ListAppMonitorsInput) async throws -> ListAppMonitorsOutputResponse
    {
        typealias listAppMonitorsContinuation = CheckedContinuation<ListAppMonitorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppMonitorsContinuation) in
            listAppMonitors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Displays the tags associated with a CloudWatch RUM resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code snippet that RUM generates for you to add to your application includes PutRumEvents operations to send this data to RUM. Each PutRumEvents operation can send a batch of events from one user session.
    func putRumEvents(input: PutRumEventsInput) async throws -> PutRumEventsOutputResponse
    {
        typealias putRumEventsContinuation = CheckedContinuation<PutRumEventsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putRumEventsContinuation) in
            putRumEvents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently, the only resources that can be tagged app monitors. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes one or more tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor configuration that you specify in this operation are changed. For any parameters that you omit, the existing values are kept. You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use [TagResource](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html). To create a new app monitor, use [CreateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html). After you update an app monitor, sign in to the CloudWatch RUM console to get the updated JavaScript code snippet to add to your web application. For more information, see [How do I find a code snippet that I've already generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
    func updateAppMonitor(input: UpdateAppMonitorInput) async throws -> UpdateAppMonitorOutputResponse
    {
        typealias updateAppMonitorContinuation = CheckedContinuation<UpdateAppMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAppMonitorContinuation) in
            updateAppMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
