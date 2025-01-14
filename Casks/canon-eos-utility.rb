cask 'canon-eos-utility' do
  version '3.8.20'
  sha256 '7c3480037da00c6b033410d844ab2065be5e10f62b6e98b25aebf451ecb164ef'

  # gdlp01.c-wss.com/gds/3/0200005443/01/eum3.8.20-installer.dmg.zip was verified as official when first introduced to the cask
  url 'http://gdlp01.c-wss.com/gds/3/0200005443/01/eum3.8.20-installer.dmg.zip'
  name 'Canon EOS Utility'
  homepage 'https://asia.canon/en/support/0200584202/1'

  installer manual: "eum#{version}-installer.app"

  uninstall delete: [
                      '/Applications/Canon Utilities/Auto Update Service',
                      '/Applications/Canon Utilities/CameraSurveyProgram',
                      '/Applications/Canon Utilities/EOS Lens Registration Tool',
                      '/Applications/Canon Utilities/EOS Utility',
                      '/Applications/Canon Utilities/EOS Web Service Registration Tool',
                    ],
            rmdir:  '/Applications/Canon Utilities'

  zap trash: [
               '~/Library/Caches/com.canon.EOS-Lens-Registration-Tool',
               '~/Library/Caches/com.canon.UpdateChecker',
               '~/Library/Preferences/jp.co.canon.ic.camerasurveyprogram.plist',
               '~/Library/Preferences/com.canon.EOS Utility 2.plist',
               '~/Library/Preferences/com.canon.EOS-Utility.plist',
               '~/Library/Preferences/com.canon.EOS-Utility-3.plist',
             ]
end
