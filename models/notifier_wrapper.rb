# Decorate a build with pre and post hooks.
class NotifierWrapper < Jenkins::Tasks::BuildWrapper
  display_name "Jenkins slack custom notifier build wrapper"
  attr_accessor :token
  attr_accessor :channel
  attr_accessor :message

  # Invoked with the form parameters when this extension point
  # is created from a configuration screen.
  def initialize(attrs = {})
    @token   = attrs['token']
    @channel = attrs['channel']
    @message = attrs['message']
  end

  # Perform setup for a build
  #
  # invoked after checkout, but before any `Builder`s have been run
  # @param [Jenkins::Model::Build] build the build about to run
  # @param [Jenkins::Launcher] launcher a launcher for the orderly starting/stopping of processes.
  # @param [Jenkins::Model::Listener] listener channel for interacting with build output console
  def setup(build, launcher, listener)
    listener << 'Bash execute'
    launcher.execute('bash', '-c', 'echo hello', {out: listener})
  end

  # Optionally perform optional teardown for a build
  #
  # invoked after a build has run for better or for worse. It's ok if subclasses
  # don't override this.
  #
  # @param [Jenkins::Model::Build] the build which has completed
  # @param [Jenkins::Model::Listener] listener channel for interacting with build output console
  def teardown(build, listener)
  end
end
