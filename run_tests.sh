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
TMGRAMMAR_ROOT="./node_modules/tm-grammars/grammars"

# Run the grammar test with the provided pattern
npx vscode-tmgrammar-test \
    -g syntaxes/tiddlywiki5.tmLanguage.json \
    -g "${TMGRAMMAR_ROOT}/asm.json" \
    -g "${TMGRAMMAR_ROOT}/coffee.json" \
    -g "${TMGRAMMAR_ROOT}/c.json" \
    -g "${TMGRAMMAR_ROOT}/clojure.json" \
    -g "${TMGRAMMAR_ROOT}/cpp.json" \
    -g "${TMGRAMMAR_ROOT}/cpp-macro.json" \
    -g "${TMGRAMMAR_ROOT}/csharp.json" \
    -g "${TMGRAMMAR_ROOT}/css.json" \
    -g "${TMGRAMMAR_ROOT}/docker.json" \
    -g "${TMGRAMMAR_ROOT}/diff.json" \
    -g "${TMGRAMMAR_ROOT}/erlang.json" \
    -g "${TMGRAMMAR_ROOT}/elixir.json" \
    -g "${TMGRAMMAR_ROOT}/elm.json" \
    -g "${TMGRAMMAR_ROOT}/git-commit.json" \
    -g "${TMGRAMMAR_ROOT}/glsl.json" \
    -g "${TMGRAMMAR_ROOT}/go.json" \
    -g "${TMGRAMMAR_ROOT}/graphql.json" \
    -g "${TMGRAMMAR_ROOT}/haskell.json" \
    -g "${TMGRAMMAR_ROOT}/html.json" \
    -g "${TMGRAMMAR_ROOT}/java.json" \
    -g "${TMGRAMMAR_ROOT}/javascript.json" \
    -g "${TMGRAMMAR_ROOT}/json.json" \
    -g "${TMGRAMMAR_ROOT}/jsx.json" \
    -g "${TMGRAMMAR_ROOT}/julia.json" \
    -g "${TMGRAMMAR_ROOT}/kotlin.json" \
    -g "${TMGRAMMAR_ROOT}/lua.json" \
    -g "${TMGRAMMAR_ROOT}/make.json" \
    -g "${TMGRAMMAR_ROOT}/markdown.json" \
    -g "${TMGRAMMAR_ROOT}/objective-c.json" \
    -g "${TMGRAMMAR_ROOT}/objective-cpp.json" \
    -g "${TMGRAMMAR_ROOT}/perl.json" \
    -g "${TMGRAMMAR_ROOT}/php.json" \
    -g "${TMGRAMMAR_ROOT}/python.json" \
    -g "${TMGRAMMAR_ROOT}/r.json" \
    -g "${TMGRAMMAR_ROOT}/raku.json" \
    -g "${TMGRAMMAR_ROOT}/razor.json" \
    -g "${TMGRAMMAR_ROOT}/ruby.json" \
    -g "${TMGRAMMAR_ROOT}/rust.json" \
    -g "${TMGRAMMAR_ROOT}/scala.json" \
    -g "${TMGRAMMAR_ROOT}/shellscript.json" \
    -g "${TMGRAMMAR_ROOT}/shellsession.json" \
    -g "${TMGRAMMAR_ROOT}/sql.json" \
    -g "${TMGRAMMAR_ROOT}/swift.json" \
    -g "${TMGRAMMAR_ROOT}/toml.json" \
    -g "${TMGRAMMAR_ROOT}/tsx.json" \
    -g "${TMGRAMMAR_ROOT}/typescript.json" \
    -g "${TMGRAMMAR_ROOT}/xml.json" \
    -g "${TMGRAMMAR_ROOT}/xsl.json" \
    -g "${TMGRAMMAR_ROOT}/yaml.json" \
    "${PATTERN}"
