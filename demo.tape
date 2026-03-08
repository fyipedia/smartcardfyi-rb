# smartcardfyi-rb — Ruby API Client Demo
Output demo.gif

Set FontSize 20
Set Width 1000
Set Height 580
Set Shell "zsh"
Set Theme "Catppuccin Mocha"
Set TypingSpeed 30ms
Set Padding 24

Type "# SmartCardFYI Ruby API Client"
Enter
Sleep 0.5s

Type "curl -s 'https://smartcardfyi.com/api/search/?q=sim' | jq '.results[:2]'"
Enter
Sleep 3s

Type "curl -s 'https://smartcardfyi.com/api/compare/?a=emv-payment&b=java-card' | jq '{a, b}'"
Enter
Sleep 3s

Sleep 1s
