// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MediaPackageClient {
    /// Changes the Channel's properities to configure log subscription
    func configureLogs(input: ConfigureLogsInput) async throws -> ConfigureLogsOutputResponse
    {
        typealias configureLogsContinuation = CheckedContinuation<ConfigureLogsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: configureLogsContinuation) in
            configureLogs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Channel.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    {
        typealias createChannelContinuation = CheckedContinuation<CreateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createChannelContinuation) in
            createChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new HarvestJob record.
    func createHarvestJob(input: CreateHarvestJobInput) async throws -> CreateHarvestJobOutputResponse
    {
        typealias createHarvestJobContinuation = CheckedContinuation<CreateHarvestJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createHarvestJobContinuation) in
            createHarvestJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new OriginEndpoint record.
    func createOriginEndpoint(input: CreateOriginEndpointInput) async throws -> CreateOriginEndpointOutputResponse
    {
        typealias createOriginEndpointContinuation = CheckedContinuation<CreateOriginEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOriginEndpointContinuation) in
            createOriginEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Channel.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    {
        typealias deleteChannelContinuation = CheckedContinuation<DeleteChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteChannelContinuation) in
            deleteChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing OriginEndpoint.
    func deleteOriginEndpoint(input: DeleteOriginEndpointInput) async throws -> DeleteOriginEndpointOutputResponse
    {
        typealias deleteOriginEndpointContinuation = CheckedContinuation<DeleteOriginEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteOriginEndpointContinuation) in
            deleteOriginEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets details about a Channel.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    {
        typealias describeChannelContinuation = CheckedContinuation<DescribeChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeChannelContinuation) in
            describeChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets details about an existing HarvestJob.
    func describeHarvestJob(input: DescribeHarvestJobInput) async throws -> DescribeHarvestJobOutputResponse
    {
        typealias describeHarvestJobContinuation = CheckedContinuation<DescribeHarvestJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeHarvestJobContinuation) in
            describeHarvestJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets details about an existing OriginEndpoint.
    func describeOriginEndpoint(input: DescribeOriginEndpointInput) async throws -> DescribeOriginEndpointOutputResponse
    {
        typealias describeOriginEndpointContinuation = CheckedContinuation<DescribeOriginEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeOriginEndpointContinuation) in
            describeOriginEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of Channels.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    {
        typealias listChannelsContinuation = CheckedContinuation<ListChannelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listChannelsContinuation) in
            listChannels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of HarvestJob records.
    func listHarvestJobs(input: ListHarvestJobsInput) async throws -> ListHarvestJobsOutputResponse
    {
        typealias listHarvestJobsContinuation = CheckedContinuation<ListHarvestJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listHarvestJobsContinuation) in
            listHarvestJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of OriginEndpoint records.
    func listOriginEndpoints(input: ListOriginEndpointsInput) async throws -> ListOriginEndpointsOutputResponse
    {
        typealias listOriginEndpointsContinuation = CheckedContinuation<ListOriginEndpointsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOriginEndpointsContinuation) in
            listOriginEndpoints(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

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

    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    func rotateChannelCredentials(input: RotateChannelCredentialsInput) async throws -> RotateChannelCredentialsOutputResponse
    {
        typealias rotateChannelCredentialsContinuation = CheckedContinuation<RotateChannelCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rotateChannelCredentialsContinuation) in
            rotateChannelCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    func rotateIngestEndpointCredentials(input: RotateIngestEndpointCredentialsInput) async throws -> RotateIngestEndpointCredentialsOutputResponse
    {
        typealias rotateIngestEndpointCredentialsContinuation = CheckedContinuation<RotateIngestEndpointCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rotateIngestEndpointCredentialsContinuation) in
            rotateIngestEndpointCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

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

    /// Updates an existing Channel.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    {
        typealias updateChannelContinuation = CheckedContinuation<UpdateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateChannelContinuation) in
            updateChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing OriginEndpoint.
    func updateOriginEndpoint(input: UpdateOriginEndpointInput) async throws -> UpdateOriginEndpointOutputResponse
    {
        typealias updateOriginEndpointContinuation = CheckedContinuation<UpdateOriginEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateOriginEndpointContinuation) in
            updateOriginEndpoint(input: input) { result in
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