// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension LexRuntimeClient {
    /// <p>Removes session information for a specified bot, alias, and user ID.
    ///     </p>
    func deleteSession(input: DeleteSessionInput) async throws -> DeleteSessionOutputResponse
    {
        typealias deleteSessionContinuation = CheckedContinuation<DeleteSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSessionContinuation) in
            deleteSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns session information for a specified bot, alias, and user
    ///       ID.</p>
    func getSession(input: GetSessionInput) async throws -> GetSessionOutputResponse
    {
        typealias getSessionContinuation = CheckedContinuation<GetSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSessionContinuation) in
            getSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p> Sends user input (text or speech) to Amazon Lex. Clients use this API to
    ///       send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the
    ///       user input using the machine learning model that it built for the bot. </p>
    ///          <p>The <code>PostContent</code> operation supports audio input at 8kHz
    ///       and 16kHz. You can use 8kHz audio to achieve higher speech recognition
    ///       accuracy in telephone audio applications. </p>
    ///          <p> In response, Amazon Lex returns the next message to convey to the user.
    ///       Consider the following example messages: </p>
    ///          <ul>
    ///             <li>
    ///                <p> For a user input "I would like a pizza," Amazon Lex might return a
    ///           response with a message eliciting slot data (for example,
    ///             <code>PizzaSize</code>): "What size pizza would you like?". </p>
    ///             </li>
    ///             <li>
    ///                <p> After the user provides all of the pizza order information, Amazon Lex
    ///           might return a response with a message to get user confirmation:
    ///           "Order the pizza?". </p>
    ///             </li>
    ///             <li>
    ///                <p> After the user replies "Yes" to the confirmation prompt, Amazon Lex
    ///           might return a conclusion statement: "Thank you, your cheese pizza has
    ///           been ordered.". </p>
    ///             </li>
    ///          </ul>
    ///          <p> Not all Amazon Lex messages require a response from the user. For example,
    ///       conclusion statements do not require a response. Some messages require
    ///       only a yes or no response. In addition to the <code>message</code>, Amazon Lex
    ///       provides additional context about the message in the response that you can
    ///       use to enhance client behavior, such as displaying the appropriate client
    ///       user interface. Consider the following examples: </p>
    ///          <ul>
    ///             <li>
    ///                <p> If the message is to elicit slot data, Amazon Lex returns the
    ///           following context information: </p>
    ///                <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>x-amz-lex-dialog-state</code> header set to
    ///                 <code>ElicitSlot</code>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>x-amz-lex-intent-name</code> header set to the intent name
    ///               in the current context </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>x-amz-lex-slot-to-elicit</code> header set to the slot name
    ///               for which the <code>message</code> is eliciting information
    ///             </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>x-amz-lex-slots</code> header set to a map of slots
    ///               configured for the intent with their current values </p>
    ///                   </li>
    ///                </ul>
    ///             </li>
    ///             <li>
    ///                <p> If the message is a confirmation prompt, the
    ///             <code>x-amz-lex-dialog-state</code> header is set to
    ///             <code>Confirmation</code> and the
    ///             <code>x-amz-lex-slot-to-elicit</code> header is omitted. </p>
    ///             </li>
    ///             <li>
    ///                <p> If the message is a clarification prompt configured for the
    ///           intent, indicating that the user intent is not understood, the
    ///             <code>x-amz-dialog-state</code> header is set to
    ///             <code>ElicitIntent</code> and the <code>x-amz-slot-to-elicit</code>
    ///           header is omitted. </p>
    ///             </li>
    ///          </ul>
    ///          <p> In addition, Amazon Lex also returns your application-specific
    ///         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    ///         Conversation Context</a>. </p>
    func postContent(input: PostContentInput) async throws -> PostContentOutputResponse
    {
        typealias postContentContinuation = CheckedContinuation<PostContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: postContentContinuation) in
            postContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Sends user input to Amazon Lex. Client applications can use this API to
    ///       send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input
    ///       using the machine learning model it built for the bot. </p>
    ///          <p> In response, Amazon Lex returns the next <code>message</code> to convey to
    ///       the user an optional <code>responseCard</code> to display. Consider the
    ///       following example messages: </p>
    ///          <ul>
    ///             <li>
    ///                <p> For a user input "I would like a pizza", Amazon Lex might return a
    ///           response with a message eliciting slot data (for example, PizzaSize):
    ///           "What size pizza would you like?" </p>
    ///             </li>
    ///             <li>
    ///                <p> After the user provides all of the pizza order information,
    ///           Amazon Lex might return a response with a message to obtain user
    ///           confirmation "Proceed with the pizza order?". </p>
    ///             </li>
    ///             <li>
    ///                <p> After the user replies to a confirmation prompt with a "yes",
    ///           Amazon Lex might return a conclusion statement: "Thank you, your cheese
    ///           pizza has been ordered.". </p>
    ///             </li>
    ///          </ul>
    ///
    ///          <p> Not all Amazon Lex messages require a user response. For example, a
    ///       conclusion statement does not require a response. Some messages require
    ///       only a "yes" or "no" user response. In addition to the
    ///         <code>message</code>, Amazon Lex provides additional context about the
    ///       message in the response that you might use to enhance client behavior, for
    ///       example, to display the appropriate client user interface. These are the
    ///         <code>slotToElicit</code>, <code>dialogState</code>,
    ///         <code>intentName</code>, and <code>slots</code> fields in the response.
    ///       Consider the following examples: </p>
    ///
    ///          <ul>
    ///             <li>
    ///                <p>If the message is to elicit slot data, Amazon Lex returns the
    ///           following context information:</p>
    ///                <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>dialogState</code> set to ElicitSlot </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>intentName</code> set to the intent name in the current
    ///               context </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>slotToElicit</code> set to the slot name for which the
    ///                 <code>message</code> is eliciting information </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>slots</code> set to a map of slots, configured for the
    ///               intent, with currently known values </p>
    ///                   </li>
    ///                </ul>
    ///             </li>
    ///             <li>
    ///                <p> If the message is a confirmation prompt, the
    ///             <code>dialogState</code> is set to ConfirmIntent and
    ///             <code>SlotToElicit</code> is set to null. </p>
    ///             </li>
    ///             <li>
    ///                <p>If the message is a clarification prompt (configured for the
    ///           intent) that indicates that user intent is not understood, the
    ///             <code>dialogState</code> is set to ElicitIntent and
    ///             <code>slotToElicit</code> is set to null. </p>
    ///             </li>
    ///          </ul>
    ///
    ///          <p> In addition, Amazon Lex also returns your application-specific
    ///         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    ///         Conversation Context</a>. </p>
    func postText(input: PostTextInput) async throws -> PostTextOutputResponse
    {
        typealias postTextContinuation = CheckedContinuation<PostTextOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: postTextContinuation) in
            postText(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new session or modifies an existing session with an Amazon Lex
    ///       bot. Use this operation to enable your application to set the state of the
    ///       bot.</p>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html">Managing
    ///         Sessions</a>.</p>
    func putSession(input: PutSessionInput) async throws -> PutSessionOutputResponse
    {
        typealias putSessionContinuation = CheckedContinuation<PutSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putSessionContinuation) in
            putSession(input: input) { result in
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