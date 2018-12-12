PACKAGES=(
    "lukehoban.Go"
    "ms-python.python"
    "PeterJausovec.vscode-docker"
    "robertohuertasm.vscode-icons"
    "rebornix.Ruby"
    "spywhere.guides"
    "wmaurer.vscode-jumpy"
    "dbaeumer.vscode-eslint"
    "DavidAnson.vscode-markdownlint"
)

for i in "${PACKAGES[@]}"
do
    code --install-extension "${i}"
done
