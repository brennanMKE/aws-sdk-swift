// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension LookoutVisionClient {
    /// <p>Creates a new dataset  in an Amazon Lookout for Vision project. <code>CreateDataset</code> can create a
    ///       training or a test dataset from a valid dataset source (<code>DatasetSource</code>).</p>
    ///          <p>If you want a single dataset project, specify <code>train</code> for the value of
    ///          <code>DatasetType</code>.</p>
    ///         <p>To have a project with separate training and test datasets, call <code>CreateDataset</code> twice.
    ///            On the first call, specify <code>train</code> for the value of
    ///            <code>DatasetType</code>. On the second call, specify <code>test</code> for the value of
    ///            <code>DatasetType</code>. </p>
    ///         <p>This operation requires permissions to perform the
    ///            <code>lookoutvision:CreateDataset</code> operation.</p>
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    {
        typealias createDatasetContinuation = CheckedContinuation<CreateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatasetContinuation) in
            createDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new version of a model within an an Amazon Lookout for Vision project.
    ///       <code>CreateModel</code> is an asynchronous operation in which Amazon Lookout for Vision trains, tests,
    ///        and evaluates a new version of a model. </p>
    ///          <p>To get the current status, check the <code>Status</code> field returned
    ///       in the response from <a>DescribeModel</a>.</p>
    ///          <p>If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset
    ///        to create a training and a test dataset.
    ///        If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test
    ///        the model. </p>
    ///          <p>After training completes, the evaluation metrics are stored at the location specified in
    ///         <code>OutputConfig</code>.  </p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:CreateModel</code> operation. If you want to tag your model, you also require
    ///          permission to the <code>lookoutvision:TagResource</code> operation.</p>
    func createModel(input: CreateModelInput) async throws -> CreateModelOutputResponse
    {
        typealias createModelContinuation = CheckedContinuation<CreateModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createModelContinuation) in
            createModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling
    ///          <a>CreateDataset</a>.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:CreateProject</code> operation.</p>
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

    /// <p>Deletes an existing Amazon Lookout for Vision <code>dataset</code>. </p>
    ///          <p>If your the project has a single
    ///       dataset, you must create a new dataset before you can create a model.</p>
    ///          <p>If you project has a training dataset and a test dataset consider the following. </p>
    ///          <ul>
    ///             <li>
    ///                <p>If you delete the test dataset, your project reverts to a single dataset project. If you then
    ///       train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.</p>
    ///             </li>
    ///             <li>
    ///                <p>If you delete the training dataset, you must create a training dataset before you can create a model.</p>
    ///             </li>
    ///          </ul>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DeleteDataset</code> operation.</p>
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    {
        typealias deleteDatasetContinuation = CheckedContinuation<DeleteDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatasetContinuation) in
            deleteDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model,
    ///       use the <a>StopModel</a> operation.</p>
    ///          <p>It might take a few seconds to delete a model. To determine if a model has been deleted, call
    ///          <a>ListProjects</a> and check if the version of the model (<code>ModelVersion</code>) is in the
    ///          <code>Models</code> array. </p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DeleteModel</code> operation.</p>
    func deleteModel(input: DeleteModelInput) async throws -> DeleteModelOutputResponse
    {
        typealias deleteModelContinuation = CheckedContinuation<DeleteModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteModelContinuation) in
            deleteModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an Amazon Lookout for Vision project.</p>
    ///          <p>To delete a project, you must first delete each version of the model associated with
    ///          the project. To delete a model use the <a>DeleteModel</a> operation.</p>
    ///          <p>You also have to delete the dataset(s) associated with the model. For more information, see
    ///          <a>DeleteDataset</a>.  The images referenced by the training and test datasets aren't deleted.
    ///       </p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DeleteProject</code> operation.</p>
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

    /// <p>Describe an Amazon Lookout for Vision dataset.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DescribeDataset</code> operation.</p>
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    {
        typealias describeDatasetContinuation = CheckedContinuation<DescribeDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDatasetContinuation) in
            describeDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes a version of an Amazon Lookout for Vision model.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DescribeModel</code> operation.</p>
    func describeModel(input: DescribeModelInput) async throws -> DescribeModelOutputResponse
    {
        typealias describeModelContinuation = CheckedContinuation<DescribeModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeModelContinuation) in
            describeModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes an Amazon Lookout for Vision project.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DescribeProject</code> operation.</p>
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    {
        typealias describeProjectContinuation = CheckedContinuation<DescribeProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeProjectContinuation) in
            describeProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Detects anomalies in an image that you supply. </p>
    ///          <p>The response from <code>DetectAnomalies</code> includes a boolean prediction
    ///          that the image contains one or more anomalies and a confidence value for the prediction.</p>
    ///          <note>
    ///             <p>Before calling <code>DetectAnomalies</code>, you must first start your model with the <a>StartModel</a> operation.
    ///          You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your
    ///          model uses. If you are not using a model, use the <a>StopModel</a> operation to stop your model. </p>
    ///          </note>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:DetectAnomalies</code> operation.</p>
    func detectAnomalies(input: DetectAnomaliesInput) async throws -> DetectAnomaliesOutputResponse
    {
        typealias detectAnomaliesContinuation = CheckedContinuation<DetectAnomaliesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: detectAnomaliesContinuation) in
            detectAnomalies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly
    ///       information for a single image, including the image location and the assigned label.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:ListDatasetEntries</code> operation.</p>
    func listDatasetEntries(input: ListDatasetEntriesInput) async throws -> ListDatasetEntriesOutputResponse
    {
        typealias listDatasetEntriesContinuation = CheckedContinuation<ListDatasetEntriesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatasetEntriesContinuation) in
            listDatasetEntries(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the versions of a model in an Amazon Lookout for Vision project.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:ListModels</code> operation.</p>
    func listModels(input: ListModelsInput) async throws -> ListModelsOutputResponse
    {
        typealias listModelsContinuation = CheckedContinuation<ListModelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listModelsContinuation) in
            listModels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the Amazon Lookout for Vision projects in your AWS account.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:ListProjects</code> operation.</p>
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

    /// <p>Returns a list of tags attached to the specified Amazon Lookout for Vision model.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:ListTagsForResource</code> operation.</p>
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

    /// <p>Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while
    ///          to complete. To check the current state of the model, use <a>DescribeModel</a>.</p>
    ///          <p>A model is ready to use when its status is <code>HOSTED</code>.</p>
    ///          <p>Once the model is running, you can detect custom labels in new images by calling
    ///          <a>DetectAnomalies</a>.</p>
    ///          <note>
    ///             <p>You are charged for the amount of time that the model is running. To stop a running
    ///          model, call <a>StopModel</a>.</p>
    ///          </note>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:StartModel</code> operation.</p>
    func startModel(input: StartModelInput) async throws -> StartModelOutputResponse
    {
        typealias startModelContinuation = CheckedContinuation<StartModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startModelContinuation) in
            startModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Stops the hosting of a running model. The operation might take a while to complete. To
    ///          check the current status, call <a>DescribeModel</a>. </p>
    ///          <p>After the model hosting stops, the <code>Status</code> of the model is <code>TRAINED</code>.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:StopModel</code> operation.</p>
    func stopModel(input: StopModelInput) async throws -> StopModelOutputResponse
    {
        typealias stopModelContinuation = CheckedContinuation<StopModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopModelContinuation) in
            stopModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds one or more key-value tags to an Amazon Lookout for Vision model.
    ///          For more information, see <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:TagResource</code> operation.</p>
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

    /// <p>Removes one or more tags from an Amazon Lookout for Vision model. For more information, see
    ///          <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:UntagResource</code> operation.</p>
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

    /// <p>Adds one or more JSON Line entries to a dataset. A JSON Line includes information about an image
    ///          used for training or testing an Amazon Lookout for Vision model. The following is an example JSON Line.</p>
    ///
    ///
    ///          <p>Updating a dataset might take a while to complete. To check the current status, call <a>DescribeDataset</a> and
    ///          check the <code>Status</code> field in the response.</p>
    ///          <p>This operation requires permissions to perform the
    ///          <code>lookoutvision:UpdateDatasetEntries</code> operation.</p>
    func updateDatasetEntries(input: UpdateDatasetEntriesInput) async throws -> UpdateDatasetEntriesOutputResponse
    {
        typealias updateDatasetEntriesContinuation = CheckedContinuation<UpdateDatasetEntriesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDatasetEntriesContinuation) in
            updateDatasetEntries(input: input) { result in
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