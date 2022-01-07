// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create Amazon EBS snapshots, write data directly to your snapshots, read data on your snapshots, and identify the differences or changes between two snapshots. If you’re an independent software vendor (ISV) who offers backup services for Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on your Amazon EBS volumes through snapshots. This can be done without having to create new volumes from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences. You can create incremental snapshots directly from data on-premises into volumes and the cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can write your on-premises data to an snapshot during a disaster. Then after recovery, you can restore it back to Amazon Web Services or on-premises from the snapshot. You no longer need to build and maintain complex mechanisms to copy data to and from Amazon EBS. This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see [Accessing the Contents of an Amazon EBS Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html) in the Amazon Elastic Compute Cloud User Guide. For more information about the supported Amazon Web Services Regions, endpoints, and service quotas for the EBS direct APIs, see [Amazon Elastic Block Store Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/ebs-service.html) in the Amazon Web Services General Reference.
public protocol EbsClientProtocol {
    /// Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to completed. You cannot write new blocks to a snapshot after it has been completed.
    func completeSnapshot(input: CompleteSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<CompleteSnapshotOutputResponse, CompleteSnapshotOutputError>) -> Void)
    /// Returns the data in a block in an Amazon Elastic Block Store snapshot.
    func getSnapshotBlock(input: GetSnapshotBlockInput, completion: @escaping (ClientRuntime.SdkResult<GetSnapshotBlockOutputResponse, GetSnapshotBlockOutputError>) -> Void)
    /// Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    func listChangedBlocks(input: ListChangedBlocksInput, completion: @escaping (ClientRuntime.SdkResult<ListChangedBlocksOutputResponse, ListChangedBlocksOutputError>) -> Void)
    /// Returns information about the blocks in an Amazon Elastic Block Store snapshot.
    func listSnapshotBlocks(input: ListSnapshotBlocksInput, completion: @escaping (ClientRuntime.SdkResult<ListSnapshotBlocksOutputResponse, ListSnapshotBlocksOutputError>) -> Void)
    /// Writes a block of data to a snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the pending state. Data written to a snapshot must be aligned with 512-KiB sectors.
    func putSnapshotBlock(input: PutSnapshotBlockInput, completion: @escaping (ClientRuntime.SdkResult<PutSnapshotBlockOutputResponse, PutSnapshotBlockOutputError>) -> Void)
    /// Creates a new Amazon EBS snapshot. The new snapshot enters the pending state after the request completes. After creating the snapshot, use [ PutSnapshotBlock](https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html) to write blocks of data to the snapshot.
    func startSnapshot(input: StartSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<StartSnapshotOutputResponse, StartSnapshotOutputError>) -> Void)
}

public enum EbsClientTypes {}
