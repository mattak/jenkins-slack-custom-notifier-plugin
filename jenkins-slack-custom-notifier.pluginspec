Jenkins::Plugin::Specification.new do |plugin|
  plugin.name = "jenkins-slack-custom-notifier"
  plugin.display_name = "Jenkins Slack Custom Notifier Plugin"
  plugin.version = '0.0.1'
  plugin.description = 'TODO: enter description here'

  # You should create a wiki-page for your plugin when you publish it, see
  # https://wiki.jenkins-ci.org/display/JENKINS/Hosting+Plugins#HostingPlugins-AddingaWikipage
  # This line makes sure it's listed in your POM.
  plugin.url = 'https://wiki.jenkins-ci.org/display/JENKINS/Jenkins+Slack+Custom+Notifier+Plugin'

  # The first argument is your user name for jenkins-ci.org.
  plugin.developed_by "maruyama", "Takuma Maruyama <maruyama@mfac.jp>"

  # This specifies where your code is hosted.
  # Alternatives include:
  #  :github => 'myuser/jenkins-slack-custom-notifier-plugin' (without myuser it defaults to jenkinsci)
  #  :git => 'git://repo.or.cz/jenkins-slack-custom-notifier-plugin.git'
  #  :svn => 'https://svn.jenkins-ci.org/trunk/hudson/plugins/jenkins-slack-custom-notifier-plugin'
  plugin.uses_repository :github => "jenkins-slack-custom-notifier-plugin"

  # This is a required dependency for every ruby plugin.
  plugin.depends_on 'ruby-runtime', '0.10'

  # This is a sample dependency for a Jenkins plugin, 'git'.
  #plugin.depends_on 'git', '1.1.11'
end
