huggingface-cli login --token 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 --add-to-git-credential
HF_USER=$(huggingface-cli whoami | head -n 1)
echo $HF_USER