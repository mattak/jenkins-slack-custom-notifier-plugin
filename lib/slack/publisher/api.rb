require 'java'

import 'org.apache.commons.httpclient.HttpClient'
import 'org.apache.commons.httpclient.methods.PostMethod'

module Slack
  module Publisher
    class API
      attr_reader :token, :channel, :message

      URL_MESSAGE = 'https://slack.com/api/chat.postMessage'

      def initialize(token, channel, message)
        @token   = token
        @channel = channel
        @message = message
      end

      def rooms_message(message, params = {})
        post = PostMethod.new(request_url)
        post.add_parameter 'token',   token
        post.add_parameter 'channel', channel
        post.add_parameter 'message', message
      end
    end
  end
end
