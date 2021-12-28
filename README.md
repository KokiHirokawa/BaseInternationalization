# Use Base Internationalization

本レポジトリでは、"Base Internationalization"について理解するため3パターンの実装を試している。
結論、コードベースでLocalizationを行えば"Base Internationalization"を利用する必要はない。

## 実装パターン

1. 言語毎にStoryboardを作成する
    - https://github.com/KokiHirokawa/BaseInternationalization/tree/use-interface-builder-storyboard
    - "Base Internationalization"は不要
1. Storyboard上でLocalizationを行い、Storyboardに対して言語毎にstringsファイルを作成する
    - https://github.com/KokiHirokawa/BaseInternationalization/tree/use-strings-file
    - BaseとなるStoryboardを用意する必要があるため、"Base Internationalization"が必要
1. Storyboardを利用するが、コードベースでLocalizationを行う
    - https://github.com/KokiHirokawa/BaseInternationalization/tree/no-use-base-internationalization
    - "Base Internationalization"は不要

## 関連リンク

- https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/InternationalizingYourUserInterface/InternationalizingYourUserInterface.html
    - > Base internationalization separates user-facing strings from .storyboard and .xib files. It relieves localizers of the need to modify .storyboard and .xib files in Interface Builder. Instead, an app has just one set of .storyboard and .xib files where strings are in the development language—the language that you used to create the .storyboard and .xib files. These .storyboard and .xib files are called the base internationalization. When you export localizations, the development language strings are the source that is translated into multiple languages. When you import localizations, Xcode generates language-specific strings files for each .storyboard and .xib file. The strings files don’t appear in the project navigator until you import localizations or add languages.
    - > In Xcode 5 and later, base internationalization is enabled by default. If you have an older project, enable base internationalization before continuing, as described in Enabling Base Internationalization.

