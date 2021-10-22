// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CodeStarConnectionsClient {
    /// Creates a connection that can then be given to other AWS services like CodePipeline so
    ///       that it can access third-party code repositories. The connection is in pending status until
    ///       the third-party connection handshake is completed from the console.
    func createConnection(input: CreateConnectionInput) async throws -> CreateConnectionOutputResponse
    {
        typealias createConnectionContinuation = CheckedContinuation<CreateConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConnectionContinuation) in
            createConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a resource that represents the infrastructure where a third-party provider is
    ///       installed. The host is used when you create connections to an installed third-party provider
    ///       type, such as GitHub Enterprise Server. You create one host for all connections to that
    ///       provider.
    ///
    ///             A host created through the CLI or the SDK is in `PENDING` status by
    ///         default. You can make its status `AVAILABLE` by setting up the host in the console.
    ///
    func createHost(input: CreateHostInput) async throws -> CreateHostOutputResponse
    {
        typealias createHostContinuation = CheckedContinuation<CreateHostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createHostContinuation) in
            createHost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The connection to be deleted.
    func deleteConnection(input: DeleteConnectionInput) async throws -> DeleteConnectionOutputResponse
    {
        typealias deleteConnectionContinuation = CheckedContinuation<DeleteConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConnectionContinuation) in
            deleteConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.
    ///
    ///             A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.
    ///
    func deleteHost(input: DeleteHostInput) async throws -> DeleteHostOutputResponse
    {
        typealias deleteHostContinuation = CheckedContinuation<DeleteHostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteHostContinuation) in
            deleteHost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the connection ARN and details such as status, owner, and provider type.
    func getConnection(input: GetConnectionInput) async throws -> GetConnectionOutputResponse
    {
        typealias getConnectionContinuation = CheckedContinuation<GetConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getConnectionContinuation) in
            getConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the host ARN and details such as status, provider type, endpoint, and, if
    ///       applicable, the VPC configuration.
    func getHost(input: GetHostInput) async throws -> GetHostOutputResponse
    {
        typealias getHostContinuation = CheckedContinuation<GetHostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getHostContinuation) in
            getHost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the connections associated with your account.
    func listConnections(input: ListConnectionsInput) async throws -> ListConnectionsOutputResponse
    {
        typealias listConnectionsContinuation = CheckedContinuation<ListConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConnectionsContinuation) in
            listConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the hosts associated with your account.
    func listHosts(input: ListHostsInput) async throws -> ListHostsOutputResponse
    {
        typealias listHostsContinuation = CheckedContinuation<ListHostsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listHostsContinuation) in
            listHosts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the set of key-value pairs (metadata) that are used to manage the resource.
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

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used
    ///       to manage a resource.
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

    /// Removes tags from an AWS resource.
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

    /// Updates a specified host with the provided configurations.
    func updateHost(input: UpdateHostInput) async throws -> UpdateHostOutputResponse
    {
        typealias updateHostContinuation = CheckedContinuation<UpdateHostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateHostContinuation) in
            updateHost(input: input) { result in
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
