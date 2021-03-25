# frozen_string_literal: true

require "mkmf"

open("Makefile", "w") do |makefile|
  cc = RbConfig::CONFIG["CC"]

  makefile.puts <<~MAKEFILE
    make: c50 gritbot
    c50:
    	cd ../c5.0 && cat defns.i global.c c50.c construct.c formtree.c info.c discr.c contin.c subset.c prune.c p-thresh.c trees.c siftrules.c ruletree.c rules.c getdata.c implicitatt.c mcost.c confmat.c sort.c update.c attwinnow.c classify.c formrules.c getnames.c modelfiles.c utility.c xval.c \
      | grep -E -v "defns.i|extern.i" > c50gt.c
    	cd ../c5.0 && #{cc} -O3 -o c5.0 c50gt.c -lm
    	cd ../c5.0 && strip c5.0
    gritbot:
    	cd ../gritbot && cat defns.i global.c cluster.c continatt.c outlier.c getdata.c gritbot.c sort.c discratt.c check.c common.c getnames.c implicitatt.c modelfiles.c update.c utility.c \
      | grep -E -v "defns.i|extern.i" > gritbotgt.c
    	cd ../gritbot && #{cc} -O3 -o gritbot gritbotgt.c -lm
    	cd ../gritbot && strip gritbot
    install:
    	# Just leave the executables where they. Other gems can find them there.
    cleane:
    	# Any files will be cleaned up when the gem is uninstalled
  MAKEFILE
end
