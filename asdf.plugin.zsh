# Find where asdf should be installed.
if [ "$(uname -s)" = "Darwin" ]; then
  location="${HOMEBREW_PREFIX:-$(brew --prefix)}/opt/asdf"
  . "${location}/libexec/asdf.sh"
else
  ASDF_DIR="${ASDF_DIR:-$HOME/.asdf}"

  # Load asdf, if found.
  if [ -f ${ASDF_DIR}/asdf.sh ]; then
    . ${ASDF_DIR}/asdf.sh

    # Load completions
    . ${ASDF_DIR}/completions/asdf.bash
  fi
fi
