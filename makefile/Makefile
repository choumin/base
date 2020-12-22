tbl := ./1.tbl
systbl := ./systbl.sh

#comma   := , 
#quote   := " 
squote  := ' 
#empty   :=   
#space   := $(empty) $(empty)
#space_escape := _-_SPACE_-_
#pound := \#
#
#arg-check = $(if $(strip $(cmd_$@)),,1) 
#make-cmd = $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd_$(1)))))
#any-prereq = $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wildcard $^),$^) 
#dot-target = $(dir $@).$(notdir $@)
why =                                                                        \
    $(if $(filter $@, $(PHONY)),- due to target is PHONY,                    \
        $(if $(wildcard $@),                                                 \
            $(if $(strip $(any-prereq)),- due to: $(any-prereq),             \
                $(if $(arg-check),                                           \
                    $(if $(cmd_$@),- due to command line change,             \
                        $(if $(filter $@, $(targets)),                       \
                            - due to missing .cmd file,                      \
                            - due to $(notdir $@) not in $$(targets)         \
                         )                                                   \
                     )                                                       \
                 )                                                           \
             ),                                                              \
             - due to target missing                                         \
         )                                                                   \
     )

escsq = $(subst $(squote),'\$(squote)',$1)
echo-why = $(call escsq, $(strip $(why)))
echo-cmd = $(if $($(quiet)cmd_$(1)), echo '		$(call escsq,$($(quiet)cmd_$(1)))';)
#
#if_changed = $(if $(strip $(any-prereq) $(arg-check)), @set -e; $(echo-cmd) $(cmd_$(1)); printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)

#echo-cmd = $(shell echo $(1);)

if_changed = $(call $(1)) $< $@
 	
pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))

LS := $(call pathsearch,ls)

abc = ls -l
cmd_ls = abc 
wrapper = $(if true, $(echo-cmd) $(cmd_$(1)), @:)

all: a.h b.h c.h

make-cmd = ls
dot-target = tmp

a.h:$(tbl) $(systbl)
	$(call if_changed, systbl)
b.h:
	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd	

c.h:
	$(call wrapper, ls)
	
