cask 'github-desktop' do
  version '224'
  sha256 '4933303a2d8f2545422d395b5ad8d5cb5a16aabd746304e139260d15578bd5cb'

  url "https://mac-installer.github.com/mac/GitHub%20Desktop%20#{version}.zip"
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'

  uninstall launchctl: [
                         'com.github.GitHub.Conduit',
                         'com.github.GitHub.GHInstallCLI',
                       ]

  zap delete: [
                '~/Library/Application Support/GitHub for Mac',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.github.sfl',
                '~/Library/Application Support/com.github.GitHub',
                '~/Library/Application Support/com.github.GitHub.ShipIt',
                '~/Library/Caches/GitHub for Mac',
                '~/Library/Caches/com.github.GitHub',
                '~/Library/Containers/com.github.GitHub.Conduit',
                '~/Library/Preferences/com.github.GitHub.LSSharedFileList.plist',
                '~/Library/Preferences/com.github.GitHub.plist',
              ]
end
