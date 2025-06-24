DOTFILES_SOURCE = home/
DOTFILES_DESTINATION = $(HOME)/

ITERM_SOURCE = apps/iterm/Settings/
ITERM_DESTINATION = ~/Library/Preferences/

VSCODE_SOURCE = apps/vscode/Settings/
VSCODE_DESTINATION = ~/Library/Application\ Support/Code/User/

SUBLIME_TEXT_SOURCE = apps/sublime/Packages/User/
SUBLIME_TEXT_DESTINATION = ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

SUBLIME_MERGE_SOURCE = apps/git/Packages/User/
SUBLIME_MERGE_DESTINATION = ~/Library/Application\ Support/Sublime\ Merge/Packages/User/

install:
	@echo 'Configure dotfiles'
	@cp -r $(DOTFILES_SOURCE) $(DOTFILES_DESTINATION)

	@echo 'Configure symlinks'
	@ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /opt/homebrew/bin/subl
	@ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /opt/homebrew/bin/code

	@echo "Configure iterm"
	@cp $(ITERM_SOURCE)/com.googlecode.iterm2.plist $(ITERM_DESTINATION)/com.googlecode.iterm2.plist.xml

	@echo "Configure vscode"
	@cp $(VSCODE_SOURCE)/keys.json $(VSCODE_DESTINATION)/keybindings.json
	@cp $(VSCODE_SOURCE)/settings.json $(VSCODE_DESTINATION)/settings.json

	@echo "Configure sublime text"
	@cp -r $(SUBLIME_TEXT_SOURCE)/Colors $(SUBLIME_TEXT_DESTINATION)/Colors
	@cp -r $(SUBLIME_TEXT_SOURCE)/Snippets $(SUBLIME_TEXT_DESTINATION)/Snippets
	@cp $(SUBLIME_TEXT_SOURCE)/files.sublime-menu $(SUBLIME_TEXT_DESTINATION)/Side\ Bar.sublime-menu
	@cp $(SUBLIME_TEXT_SOURCE)/gutter.sublime-settings $(SUBLIME_TEXT_DESTINATION)/GitGutter.sublime-settings
	@cp $(SUBLIME_TEXT_SOURCE)/shortcuts.sublime-commands $(SUBLIME_TEXT_DESTINATION)/Shortcuts.sublime-commands
	@cp $(SUBLIME_TEXT_SOURCE)/files.sublime-settings $(SUBLIME_TEXT_DESTINATION)/AdvancedNewFile.sublime-settings
	@cp $(SUBLIME_TEXT_SOURCE)/keys_osx.sublime-keymap $(SUBLIME_TEXT_DESTINATION)/Default\ \(OSX\).sublime-keymap
	@cp $(SUBLIME_TEXT_SOURCE)/settings_osx.sublime-settings $(SUBLIME_TEXT_DESTINATION)/Preferences.sublime-settings

	@echo "Configure sublime merge"
	@cp $(SUBLIME_MERGE_SOURCE)/keys_osx.sublime-keymap $(SUBLIME_MERGE_DESTINATION)/Default\ \(OSX\).sublime-keymap
	@cp $(SUBLIME_MERGE_SOURCE)/settings_osx.sublime-settings $(SUBLIME_MERGE_DESTINATION)/Preferences.sublime-settings
