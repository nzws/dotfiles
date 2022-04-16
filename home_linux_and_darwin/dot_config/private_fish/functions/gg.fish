# Clone repository from github.com using ghq and open vscode
# Usage: `gg nzws/dotfiles`

function gg
	set --local gg_path ~/ghq/github.com/$argv

	if test -e $gg_path
		echo $argv is already cloned, skip it
	else
		ghq get https://github.com/$argv
	end

	code $gg_path
end

