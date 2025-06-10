DEST_FILES = ${HOME}/.config/nvim/init.lua \
						 ${HOME}/.config/nvim/lua/packages/spec.lua \
						 ${HOME}/.config/nvim/lua/packages/completion.lua \
						 ${HOME}/.config/nvim/lua/config/lazy.lua

all: $(DEST_FILES)

SOURCE_FILES = $(notdir $(DEST_FILES))

$(DEST_FILES): %: $(notdir %)
	@echo "Copying $(notdir $@) to $@"
	@mkdir -p $(dir $@)
	cp $(notdir $@) $@

debug:
	@echo "Current directory: $(shell pwd)"
	@echo "HOME expands to: $(HOME)"
	@echo ""
	@echo "DEST_FILES:"
	@$(foreach file,$(DEST_FILES),echo "  $(file)";)
	@echo ""
	@echo "SOURCE_FILES (notdir results):"
	@$(foreach file,$(SOURCE_FILES),echo "  $(file)";)
	@echo ""
	@echo "Dependency mapping:"
	@$(foreach dest,$(DEST_FILES),echo "  $(dest) <- $(notdir $(dest))";)
