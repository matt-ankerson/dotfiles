#set-alias vim "C:/Program Files (x86)/vim/vim74/./vim.exe"
set-alias vim "C:/Program Files (x86)/vim/vim74/./gvim.exe"
set-alias ssh "C:/Program Files/OpenSSH-Win64./ssh"
set-alias touch New-Item
set-alias msbuild "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"
set-alias chrome "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

# To edit the Powershell Profile
# (Not that I'll remember this)
Function Edit-Profile
{
    vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
    vim $HOME\_vimrc
}

# Set working directory
Set-Location C:\Users\MattA\

# Set background colours for solarized.
$Host.PrivateData.DebugBackgroundColor = "Black"
$Host.PrivateData.ErrorBackgroundColor = "Black"
$Host.PrivateData.VerboseForegroundColor = "Yellow"


