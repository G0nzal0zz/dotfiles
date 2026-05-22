config.load_autoconfig(True)

# Ensure that the Escape key unfocuses any input field to prevent the user from getting stuck.
config.bind('<Escape>', 'mode-leave ;; jseval -q document.activeElement.blur()', mode='insert')

c.editor.command = ['ghostty', '-e', 'nvim', '{}']
