---@meta

---@alias MediaExtensions
---| '".png"'
---| '".jpg"'
---| '".bmp"'
---| '".gif"'
---| '".pdf"'
---| '".mp4"'
---| '".webm"'
---| '".webp"'

---@class VaultConfig
---@field home string
---@field take_over_my_home boolean
---@field auto_set_filetype boolean
---@field auto_set_syntax boolean
---@field dailies string
---@field weeklies string
---@field templates string
---@field image_subdir string|nil Should be deprecated gracefully and replaced by "images"
---@field extension string
---@field new_note_filename string
---@field uuid_type string
---@field uuid_sep string
---@field filename_space_subst string|nil
---@field follow_creates_nonexisting boolean
---@field dailies_create_nonexisting boolean
---@field weeklies_create_nonexisting boolean
---@field journal_auto_open boolean
---@field image_link_style string
---@field sort string
---@field subdirs_in_links boolean
---@field plug_into_calendar boolean
---@field calendar_opts CalendarOpts
---@field close_after_yanking boolean
---@field insert_after_inserting boolean
---@field tag_notation string
---@field command_palette_theme string
---@field show_tags_theme string
---@field template_handling string
---@field new_note_location string
---@field rename_update_links boolean
---@field media_previewer string
---@field media_extensions MediaExtensions[]
---@field follow_url_fallback string|nil
---@field enable_create_new boolean
---@field clipboard_program string
---@field filter_extensions string[]
---@field template_new_note string
---@field template_new_daily string
---@field template_new_weekly string
---@field find_command string[]
---@field rg_pcre boolean

---@class CalendarOpts
---@field weeknm number
---@field calendar_monday number
---@field calendar_mark string

---@class MultiVaultConfig
---@field vaults table<string, VaultConfig>
---@field default_vault? string
