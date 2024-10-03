```diff
diff --git a/lua/custom/plugins/init.lua b/lua/custom/plugins/init.lua
index d4ef070..52f0fee 100644
--- a/lua/custom/plugins/init.lua
+++ b/lua/custom/plugins/init.lua
@@ -9,21 +9,12 @@ vim.wo.number = true
 return {

   -- transparent background
-  'tribela/vim-transparent',
+  -- 'tribela/vim-transparent',

   -- Relative line numbers
   'sitiom/nvim-numbertoggle',

-  {
-    'nvim-neo-tree/neo-tree.nvim',
-    branch = 'v3.x',
-    dependencies = {
-      'nvim-lua/plenary.nvim',
-      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
-      'MunifTanjim/nui.nvim',
-      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
-    },
-  },
+  -- show docs
   {
     'amrbashir/nvim-docs-view',
     lazy = true,
diff --git a/lua/kickstart/plugins/debug.lua b/lua/kickstart/plugins/debug.lua
index 196f2c6..20497f6 100644
--- a/lua/kickstart/plugins/debug.lua
+++ b/lua/kickstart/plugins/debug.lua
@@ -23,6 +23,9 @@ return {

     -- Add your own debuggers here
     'leoluz/nvim-dap-go',
+
+    -- load dap config from the project folder
+    'nvim-dap-projects',
   },
   keys = function(_, keys)
     local dap = require 'dap'
@@ -64,29 +67,91 @@ return {
       ensure_installed = {
         -- Update this to ensure that you have the debuggers for the langs you want
         'delve',
+        'codelldb',
+        'cpptools',
       },
     }

     -- Dap UI setup
     -- For more information, see |:help nvim-dap-ui|
+
     dapui.setup {
-      -- Set icons to characters that are more likely to work in every terminal.
-      --    Feel free to remove or use ones that you like more! :)
-      --    Don't feel like these are good choices.
-      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
       controls = {
+        element = 'repl',
+        enabled = true,
         icons = {
-          pause = '⏸',
-          play = '▶',
-          step_into = '⏎',
-          step_over = '⏭',
-          step_out = '⏮',
-          step_back = 'b',
-          run_last = '▶▶',
-          terminate = '⏹',
-          disconnect = '⏏',
+          disconnect = '',
+          pause = '',
+          play = '',
+          run_last = '',
+          step_back = '',
+          step_into = '',
+          step_out = '',
+          step_over = '',
+          terminate = '',
+        },
+      },
+      element_mappings = {},
+      expand_lines = true,
+      floating = {
+        border = 'single',
+        mappings = {
+          close = { 'q', '<Esc>' },
         },
       },
+      force_buffers = true,
+      icons = {
+        collapsed = '',
+        current_frame = '',
+        expanded = '',
+      },
+      layouts = {
+        {
+          elements = {
+            {
+              id = 'scopes',
+              size = 0.25,
+            },
+            {
+              id = 'breakpoints',
+              size = 0.25,
+            },
+            {
+              id = 'stacks',
+              size = 0.25,
+            },
+            {
+              id = 'watches',
+              size = 0.25,
+            },
+          },
+          position = 'left',
+          size = 40,
+        },
+        {
+          elements = { {
+            id = 'repl',
+            size = 0.5,
+          }, {
+            id = 'console',
+            size = 0.5,
+          } },
+          position = 'bottom',
+          size = 10,
+        },
+      },
+      mappings = {
+        edit = 'e',
+        expand = { '<CR>', '<2-LeftMouse>' },
+        open = 'o',
+        remove = 'd',
+        repl = 'r',
+        toggle = 't',
+      },
+      render = {
+        indent = 1,
+        max_value_lines = 100,
+      },
     }

     dap.listeners.after.event_initialized['dapui_config'] = dapui.open
@@ -101,5 +166,8 @@ return {
         detached = vim.fn.has 'win32' == 0,
       },
     }
+
+    -- try search for a local config
+    require('nvim-dap-projects').search_project_config()
   end,
 }
diff --git a/lua/lazy-plugins.lua b/lua/lazy-plugins.lua
index 12bb22e..fb50d19 100644
--- a/lua/lazy-plugins.lua
+++ b/lua/lazy-plugins.lua
@@ -21,7 +21,7 @@ require('lazy').setup({
   --

   -- "gc" to comment visual regions/lines
-  { 'numToStr/Comment.nvim',  opts = {} },
+  { 'numToStr/Comment.nvim', opts = {} },

   -- modular approach: using `require 'path/name'` will
   -- include a plugin definition from file lua/path/name.lua
@@ -55,11 +55,11 @@ require('lazy').setup({
   --  Here are some example plugins that I've included in the Kickstart repository.
   --  Uncomment any of the lines below to enable them (you will need to restart nvim).
   --
-  -- require 'kickstart.plugins.debug',
-  -- require 'kickstart.plugins.indent_line',
-  -- require 'kickstart.plugins.lint',
-  -- require 'kickstart.plugins.autopairs',
-  -- require 'kickstart.plugins.neo-tree',
+  require 'kickstart.plugins.debug',
+  require 'kickstart.plugins.indent_line',
+  require 'kickstart.plugins.lint',
+  require 'kickstart.plugins.autopairs',
+  require 'kickstart.plugins.neo-tree',

   -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
   --    This is the easiest way to modularize your config.
```
