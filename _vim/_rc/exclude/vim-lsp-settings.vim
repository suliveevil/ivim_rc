let g:lsp_settings = {
\   'pyls': {
\     'workspace_config': {
\       'pyls': {
\         'configurationSources': ['flake8']
\       }
\     }
\   },
\}

let g:lsp_settings_root_markers = [
\   '.idea/',
\   '.project',
\   '.project/',
\   '.git',
\   '.git/',
\   '.root',
\   '.svn',
\   '.hg',
\   '.bzr'
\ ]