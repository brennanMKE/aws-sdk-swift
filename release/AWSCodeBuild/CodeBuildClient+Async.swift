// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CodeBuildClient {
    /// Deletes one or more builds.
    func batchDeleteBuilds(input: BatchDeleteBuildsInput) async throws -> BatchDeleteBuildsOutputResponse
    {
        typealias batchDeleteBuildsContinuation = CheckedContinuation<BatchDeleteBuildsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchDeleteBuildsContinuation) in
            batchDeleteBuilds(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about one or more batch builds.
    func batchGetBuildBatches(input: BatchGetBuildBatchesInput) async throws -> BatchGetBuildBatchesOutputResponse
    {
        typealias batchGetBuildBatchesContinuation = CheckedContinuation<BatchGetBuildBatchesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetBuildBatchesContinuation) in
            batchGetBuildBatches(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about one or more builds.
    func batchGetBuilds(input: BatchGetBuildsInput) async throws -> BatchGetBuildsOutputResponse
    {
        typealias batchGetBuildsContinuation = CheckedContinuation<BatchGetBuildsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetBuildsContinuation) in
            batchGetBuilds(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about one or more build projects.
    func batchGetProjects(input: BatchGetProjectsInput) async throws -> BatchGetProjectsOutputResponse
    {
        typealias batchGetProjectsContinuation = CheckedContinuation<BatchGetProjectsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetProjectsContinuation) in
            batchGetProjects(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns an array of report groups.
    ///
    func batchGetReportGroups(input: BatchGetReportGroupsInput) async throws -> BatchGetReportGroupsOutputResponse
    {
        typealias batchGetReportGroupsContinuation = CheckedContinuation<BatchGetReportGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetReportGroupsContinuation) in
            batchGetReportGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns an array of reports.
    ///
    func batchGetReports(input: BatchGetReportsInput) async throws -> BatchGetReportsOutputResponse
    {
        typealias batchGetReportsContinuation = CheckedContinuation<BatchGetReportsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetReportsContinuation) in
            batchGetReports(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a build project.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    {
        typealias createProjectContinuation = CheckedContinuation<CreateProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProjectContinuation) in
            createProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Creates a report group. A report group contains a collection of reports.
    ///
    func createReportGroup(input: CreateReportGroupInput) async throws -> CreateReportGroupOutputResponse
    {
        typealias createReportGroupContinuation = CheckedContinuation<CreateReportGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createReportGroupContinuation) in
            createReportGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// For an existing CodeBuild build project that has its source code stored in a GitHub or
    ///       Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a
    ///       code change is pushed to the repository.
    ///
    ///             If you enable webhooks for an CodeBuild project, and the project is used as a build
    ///         step in CodePipeline, then two identical builds are created for each commit. One build is
    ///         triggered through webhooks, and one through CodePipeline. Because billing is on a per-build
    ///         basis, you are billed for both builds. Therefore, if you are using CodePipeline, we
    ///         recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the
    ///         Webhook box. For more information, see step 5 in <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console">Change a Build Project's Settings.
    ///
    func createWebhook(input: CreateWebhookInput) async throws -> CreateWebhookOutputResponse
    {
        typealias createWebhookContinuation = CheckedContinuation<CreateWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createWebhookContinuation) in
            createWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a batch build.
    func deleteBuildBatch(input: DeleteBuildBatchInput) async throws -> DeleteBuildBatchOutputResponse
    {
        typealias deleteBuildBatchContinuation = CheckedContinuation<DeleteBuildBatchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteBuildBatchContinuation) in
            deleteBuildBatch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Deletes a build project. When you delete a project, its builds are not deleted.
    ///
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    {
        typealias deleteProjectContinuation = CheckedContinuation<DeleteProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProjectContinuation) in
            deleteProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Deletes a report.
    ///
    func deleteReport(input: DeleteReportInput) async throws -> DeleteReportOutputResponse
    {
        typealias deleteReportContinuation = CheckedContinuation<DeleteReportOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReportContinuation) in
            deleteReport(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a report group. Before you delete a report group, you must delete its reports.
    func deleteReportGroup(input: DeleteReportGroupInput) async throws -> DeleteReportGroupOutputResponse
    {
        typealias deleteReportGroupContinuation = CheckedContinuation<DeleteReportGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReportGroupContinuation) in
            deleteReportGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Deletes a resource policy that is identified by its resource ARN.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    {
        typealias deleteResourcePolicyContinuation = CheckedContinuation<DeleteResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteResourcePolicyContinuation) in
            deleteResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
    func deleteSourceCredentials(input: DeleteSourceCredentialsInput) async throws -> DeleteSourceCredentialsOutputResponse
    {
        typealias deleteSourceCredentialsContinuation = CheckedContinuation<DeleteSourceCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSourceCredentialsContinuation) in
            deleteSourceCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// For an existing CodeBuild build project that has its source code stored in a GitHub or
    ///             Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code
    ///             change is pushed to the repository.
    func deleteWebhook(input: DeleteWebhookInput) async throws -> DeleteWebhookOutputResponse
    {
        typealias deleteWebhookContinuation = CheckedContinuation<DeleteWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteWebhookContinuation) in
            deleteWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves one or more code coverage reports.
    func describeCodeCoverages(input: DescribeCodeCoveragesInput) async throws -> DescribeCodeCoveragesOutputResponse
    {
        typealias describeCodeCoveragesContinuation = CheckedContinuation<DescribeCodeCoveragesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeCodeCoveragesContinuation) in
            describeCodeCoverages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns a list of details about test cases for a report.
    ///
    func describeTestCases(input: DescribeTestCasesInput) async throws -> DescribeTestCasesOutputResponse
    {
        typealias describeTestCasesContinuation = CheckedContinuation<DescribeTestCasesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTestCasesContinuation) in
            describeTestCases(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Analyzes and accumulates test report values for the specified test reports.
    func getReportGroupTrend(input: GetReportGroupTrendInput) async throws -> GetReportGroupTrendOutputResponse
    {
        typealias getReportGroupTrendContinuation = CheckedContinuation<GetReportGroupTrendOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReportGroupTrendContinuation) in
            getReportGroupTrend(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Gets a resource policy that is identified by its resource ARN.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    {
        typealias getResourcePolicyContinuation = CheckedContinuation<GetResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResourcePolicyContinuation) in
            getResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Imports the source repository credentials for an CodeBuild project that has its
    ///             source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
    func importSourceCredentials(input: ImportSourceCredentialsInput) async throws -> ImportSourceCredentialsOutputResponse
    {
        typealias importSourceCredentialsContinuation = CheckedContinuation<ImportSourceCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importSourceCredentialsContinuation) in
            importSourceCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Resets the cache for a project.
    func invalidateProjectCache(input: InvalidateProjectCacheInput) async throws -> InvalidateProjectCacheOutputResponse
    {
        typealias invalidateProjectCacheContinuation = CheckedContinuation<InvalidateProjectCacheOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: invalidateProjectCacheContinuation) in
            invalidateProjectCache(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the identifiers of your build batches in the current region.
    func listBuildBatches(input: ListBuildBatchesInput) async throws -> ListBuildBatchesOutputResponse
    {
        typealias listBuildBatchesContinuation = CheckedContinuation<ListBuildBatchesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBuildBatchesContinuation) in
            listBuildBatches(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the identifiers of the build batches for a specific project.
    func listBuildBatchesForProject(input: ListBuildBatchesForProjectInput) async throws -> ListBuildBatchesForProjectOutputResponse
    {
        typealias listBuildBatchesForProjectContinuation = CheckedContinuation<ListBuildBatchesForProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBuildBatchesForProjectContinuation) in
            listBuildBatchesForProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a list of build IDs, with each build ID representing a single build.
    func listBuilds(input: ListBuildsInput) async throws -> ListBuildsOutputResponse
    {
        typealias listBuildsContinuation = CheckedContinuation<ListBuildsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBuildsContinuation) in
            listBuilds(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a list of build identifiers for the specified build project, with each build
    ///             identifier representing a single build.
    func listBuildsForProject(input: ListBuildsForProjectInput) async throws -> ListBuildsForProjectOutputResponse
    {
        typealias listBuildsForProjectContinuation = CheckedContinuation<ListBuildsForProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBuildsForProjectContinuation) in
            listBuildsForProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about Docker images that are managed by CodeBuild.
    func listCuratedEnvironmentImages(input: ListCuratedEnvironmentImagesInput) async throws -> ListCuratedEnvironmentImagesOutputResponse
    {
        typealias listCuratedEnvironmentImagesContinuation = CheckedContinuation<ListCuratedEnvironmentImagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCuratedEnvironmentImagesContinuation) in
            listCuratedEnvironmentImages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a list of build project names, with each build project name representing a single
    ///             build project.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    {
        typealias listProjectsContinuation = CheckedContinuation<ListProjectsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProjectsContinuation) in
            listProjects(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Gets a list ARNs for the report groups in the current Amazon Web Services account.
    ///
    func listReportGroups(input: ListReportGroupsInput) async throws -> ListReportGroupsOutputResponse
    {
        typealias listReportGroupsContinuation = CheckedContinuation<ListReportGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReportGroupsContinuation) in
            listReportGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns a list of ARNs for the reports in the current Amazon Web Services account.
    ///
    func listReports(input: ListReportsInput) async throws -> ListReportsOutputResponse
    {
        typealias listReportsContinuation = CheckedContinuation<ListReportsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReportsContinuation) in
            listReports(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns a list of ARNs for the reports that belong to a ReportGroup.
    ///
    func listReportsForReportGroup(input: ListReportsForReportGroupInput) async throws -> ListReportsForReportGroupOutputResponse
    {
        typealias listReportsForReportGroupContinuation = CheckedContinuation<ListReportsForReportGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReportsForReportGroupContinuation) in
            listReportsForReportGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Gets a list of projects that are shared with other Amazon Web Services accounts or users.
    func listSharedProjects(input: ListSharedProjectsInput) async throws -> ListSharedProjectsOutputResponse
    {
        typealias listSharedProjectsContinuation = CheckedContinuation<ListSharedProjectsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSharedProjectsContinuation) in
            listSharedProjects(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    ///
    func listSharedReportGroups(input: ListSharedReportGroupsInput) async throws -> ListSharedReportGroupsOutputResponse
    {
        typealias listSharedReportGroupsContinuation = CheckedContinuation<ListSharedReportGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSharedReportGroupsContinuation) in
            listSharedReportGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Returns a list of SourceCredentialsInfo objects.
    func listSourceCredentials(input: ListSourceCredentialsInput) async throws -> ListSourceCredentialsOutputResponse
    {
        typealias listSourceCredentialsContinuation = CheckedContinuation<ListSourceCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSourceCredentialsContinuation) in
            listSourceCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Stores a resource policy for the ARN of a Project or
    ///                 ReportGroup object.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    {
        typealias putResourcePolicyContinuation = CheckedContinuation<PutResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putResourcePolicyContinuation) in
            putResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Restarts a build.
    func retryBuild(input: RetryBuildInput) async throws -> RetryBuildOutputResponse
    {
        typealias retryBuildContinuation = CheckedContinuation<RetryBuildOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: retryBuildContinuation) in
            retryBuild(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Restarts a failed batch build. Only batch builds that have failed can be retried.
    func retryBuildBatch(input: RetryBuildBatchInput) async throws -> RetryBuildBatchOutputResponse
    {
        typealias retryBuildBatchContinuation = CheckedContinuation<RetryBuildBatchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: retryBuildBatchContinuation) in
            retryBuildBatch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts running a build.
    func startBuild(input: StartBuildInput) async throws -> StartBuildOutputResponse
    {
        typealias startBuildContinuation = CheckedContinuation<StartBuildOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startBuildContinuation) in
            startBuild(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a batch build for a project.
    func startBuildBatch(input: StartBuildBatchInput) async throws -> StartBuildBatchOutputResponse
    {
        typealias startBuildBatchContinuation = CheckedContinuation<StartBuildBatchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startBuildBatchContinuation) in
            startBuildBatch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Attempts to stop running a build.
    func stopBuild(input: StopBuildInput) async throws -> StopBuildOutputResponse
    {
        typealias stopBuildContinuation = CheckedContinuation<StopBuildOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopBuildContinuation) in
            stopBuild(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops a running batch build.
    func stopBuildBatch(input: StopBuildBatchInput) async throws -> StopBuildBatchOutputResponse
    {
        typealias stopBuildBatchContinuation = CheckedContinuation<StopBuildBatchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopBuildBatchContinuation) in
            stopBuildBatch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Changes the settings of a build project.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
    {
        typealias updateProjectContinuation = CheckedContinuation<UpdateProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProjectContinuation) in
            updateProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Changes the public visibility for a project. The project's build results, logs, and
    ///       artifacts are available to the general public.  For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html">Public build
    ///         projects in the CodeBuild User Guide.
    ///
    ///             The following should be kept in mind when making your projects public:
    ///
    ///
    ///                   All of a project's build results, logs, and artifacts, including builds that were run
    ///             when the project was private, are available to the general public.
    ///
    ///
    ///                   All build logs and artifacts are available to the public. Environment variables, source
    ///             code, and other sensitive information may have been output to the build logs and artifacts.
    ///             You must be careful about what information is output to the build logs. Some best practice
    ///             are:
    ///
    ///
    ///                         Do not store sensitive values, especially Amazon Web Services access key IDs and secret access
    ///                 keys, in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store
    ///                 or Secrets Manager to store sensitive values.
    ///
    ///
    ///                         Follow <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices">Best
    ///                   practices for using webhooks in the CodeBuild User
    ///                   Guide to limit which entities can trigger a build, and do
    ///                   not store the buildspec in the project itself, to ensure that your webhooks are as
    ///                   secure as possible.
    ///
    ///
    ///
    ///
    ///                   A malicious user can use public builds to distribute malicious artifacts. We recommend
    ///             that you review all pull requests to verify that the pull request is a legitimate change. We
    ///             also recommend that you validate any artifacts with their checksums to make sure that the
    ///             correct artifacts are being downloaded.
    ///
    ///
    ///
    func updateProjectVisibility(input: UpdateProjectVisibilityInput) async throws -> UpdateProjectVisibilityOutputResponse
    {
        typealias updateProjectVisibilityContinuation = CheckedContinuation<UpdateProjectVisibilityOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProjectVisibilityContinuation) in
            updateProjectVisibility(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Updates a report group.
    ///
    func updateReportGroup(input: UpdateReportGroupInput) async throws -> UpdateReportGroupOutputResponse
    {
        typealias updateReportGroupContinuation = CheckedContinuation<UpdateReportGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateReportGroupContinuation) in
            updateReportGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Updates the webhook associated with an CodeBuild build project.
    ///
    ///              If you use Bitbucket for your repository, rotateSecret is ignored.
    ///
    ///
    func updateWebhook(input: UpdateWebhookInput) async throws -> UpdateWebhookOutputResponse
    {
        typealias updateWebhookContinuation = CheckedContinuation<UpdateWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateWebhookContinuation) in
            updateWebhook(input: input) { result in
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
