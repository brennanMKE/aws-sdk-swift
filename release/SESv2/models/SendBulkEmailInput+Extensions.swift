// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SendBulkEmailInputHeadersMiddleware: Middleware {
    public let id: String = "SendBulkEmailInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendBulkEmailInput>,
                  next: H) -> Swift.Result<OperationOutput<SendBulkEmailOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendBulkEmailInput>
    public typealias MOutput = OperationOutput<SendBulkEmailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendBulkEmailOutputError>
}

public struct SendBulkEmailInputQueryItemMiddleware: Middleware {
    public let id: String = "SendBulkEmailInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendBulkEmailInput>,
                  next: H) -> Swift.Result<OperationOutput<SendBulkEmailOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendBulkEmailInput>
    public typealias MOutput = OperationOutput<SendBulkEmailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendBulkEmailOutputError>
}

public struct SendBulkEmailInputBodyMiddleware: Middleware {
    public let id: String = "SendBulkEmailInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendBulkEmailInput>,
                  next: H) -> Swift.Result<OperationOutput<SendBulkEmailOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendBulkEmailInput>
    public typealias MOutput = OperationOutput<SendBulkEmailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendBulkEmailOutputError>
}

extension SendBulkEmailInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bulkEmailEntries = "BulkEmailEntries"
        case configurationSetName = "ConfigurationSetName"
        case defaultContent = "DefaultContent"
        case defaultEmailTags = "DefaultEmailTags"
        case feedbackForwardingEmailAddress = "FeedbackForwardingEmailAddress"
        case feedbackForwardingEmailAddressIdentityArn = "FeedbackForwardingEmailAddressIdentityArn"
        case fromEmailAddress = "FromEmailAddress"
        case fromEmailAddressIdentityArn = "FromEmailAddressIdentityArn"
        case replyToAddresses = "ReplyToAddresses"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bulkEmailEntries = bulkEmailEntries {
            var bulkEmailEntriesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .bulkEmailEntries)
            for bulkemailentrylist0 in bulkEmailEntries {
                try bulkEmailEntriesContainer.encode(bulkemailentrylist0)
            }
        }
        if let configurationSetName = configurationSetName {
            try encodeContainer.encode(configurationSetName, forKey: .configurationSetName)
        }
        if let defaultContent = defaultContent {
            try encodeContainer.encode(defaultContent, forKey: .defaultContent)
        }
        if let defaultEmailTags = defaultEmailTags {
            var defaultEmailTagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .defaultEmailTags)
            for messagetaglist0 in defaultEmailTags {
                try defaultEmailTagsContainer.encode(messagetaglist0)
            }
        }
        if let feedbackForwardingEmailAddress = feedbackForwardingEmailAddress {
            try encodeContainer.encode(feedbackForwardingEmailAddress, forKey: .feedbackForwardingEmailAddress)
        }
        if let feedbackForwardingEmailAddressIdentityArn = feedbackForwardingEmailAddressIdentityArn {
            try encodeContainer.encode(feedbackForwardingEmailAddressIdentityArn, forKey: .feedbackForwardingEmailAddressIdentityArn)
        }
        if let fromEmailAddress = fromEmailAddress {
            try encodeContainer.encode(fromEmailAddress, forKey: .fromEmailAddress)
        }
        if let fromEmailAddressIdentityArn = fromEmailAddressIdentityArn {
            try encodeContainer.encode(fromEmailAddressIdentityArn, forKey: .fromEmailAddressIdentityArn)
        }
        if let replyToAddresses = replyToAddresses {
            var replyToAddressesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .replyToAddresses)
            for emailaddresslist0 in replyToAddresses {
                try replyToAddressesContainer.encode(emailaddresslist0)
            }
        }
    }
}