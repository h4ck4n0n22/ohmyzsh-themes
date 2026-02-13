# Cyberpunk Oh My Zsh Theme
# A neon-drenched, futuristic prompt for hackers

# Color definitions - neon cyberpunk palette
local neon_cyan="%F{51}"
local neon_magenta="%F{201}"
local neon_green="%F{46}"
local neon_blue="%F{39}"
local neon_pink="%F{213}"
local neon_yellow="%F{226}"
local neon_red="%F{196}"
local dark_gray="%F{240}"
local reset="%f"

# Unicode glyphs for that cyberpunk feel
local glyph_lightning="⚡"
local glyph_triangle="▶"
local glyph_lambda="λ"
local glyph_angle="❯"
local glyph_hex="⬡"
local glyph_circuit="◈"

# Git prompt configuration
ZSH_THEME_GIT_PROMPT_PREFIX="${dark_gray}[${neon_cyan}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${dark_gray}]${reset}"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${neon_red}✗${reset}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ${neon_green}✓${reset}"
ZSH_THEME_GIT_PROMPT_AHEAD="${neon_yellow}↑"
ZSH_THEME_GIT_PROMPT_BEHIND="${neon_yellow}↓"

# Function to show current time
function cyberpunk_time() {
    echo "${dark_gray}[${neon_pink}%*${dark_gray}]${reset}"
}

# Function to show hostname/user
function cyberpunk_user() {
    echo "${neon_magenta}%n${dark_gray}@${neon_blue}%m${reset}"
}

# Function to show current directory
function cyberpunk_dir() {
    echo "${neon_cyan}%~${reset}"
}

# Function to show exit code if non-zero
function cyberpunk_status() {
    echo "%(?..${neon_red}${glyph_lightning}%?${reset} )"
}

# Build the prompt
PROMPT='
${dark_gray}╔═${neon_green}[${reset}$(cyberpunk_time)${neon_green}]${dark_gray}═[${reset}$(cyberpunk_user)${dark_gray}]${reset}
${dark_gray}╠══${glyph_triangle} ${reset}$(cyberpunk_dir)${reset} $(git_prompt_info)
${dark_gray}╚═${glyph_angle}${glyph_angle}${reset} $(cyberpunk_status)${neon_green}${glyph_lambda}${reset} '

# Right prompt (optional - shows time elapsed)
# RPROMPT='${dark_gray}${glyph_hex}${reset}'
