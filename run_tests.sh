#!/bin/bash

# Check if the user has provided an argument
if [ $# -eq 0 ]; then
    echo "Usage: ./run_tests.sh <pattern>"
    exit 1
fi

# The first argument is the pattern for test files
PATTERN=$1

# Define the root directory for VSCode syntaxes
VSCODE_EXTROOT="${HOME}/AppData/Local/Programs/Microsoft VS Code/resources/app/extensions"

# Run the grammar test with the provided pattern
npx vscode-tmgrammar-test \
    -g syntaxes/tiddlywiki5.tmLanguage.json \
    -g "${VSCODE_EXTROOT}/coffeescript/syntaxes/coffeescript.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/cpp/syntaxes/c.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/cpp/syntaxes/cpp.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/csharp/syntaxes/csharp.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/css/syntaxes/css.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/git-base/syntaxes/git-commit.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/html/syntaxes/html.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/java/syntaxes/java.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/javascript/syntaxes/JavaScript.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/json/syntaxes/JSON.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/make/syntaxes/make.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/markdown-basics/syntaxes/markdown.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/objective-c/syntaxes/objective-c.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/objective-c/syntaxes/objective-c++.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/perl/syntaxes/Perl.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/php/syntaxes/php.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/python/syntaxes/MagicPython.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/razor/syntaxes/cshtml.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/ruby/syntaxes/ruby.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/shellscript/syntaxes/Shell-Unix-Bash.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/sql/syntaxes/sql.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/xml/syntaxes/xml.tmLanguage.json" \
    -g "${VSCODE_EXTROOT}/xml/syntaxes/xsl.tmLanguage.json" \
    -g "./node_modules/language-gfm/grammars/gfm.json" \
    -g "./node_modules/vscode-jsp/syntaxes/jsp.tmLanguage.json" \
    "${PATTERN}"
