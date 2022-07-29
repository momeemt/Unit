# Package

version       = "0.3.0"
author        = "Momeemt"
description   = "A library that provides unit types in nim"
license       = "MIT"
srcDir        = "src"

# Dependencies

requires "nim >= 1.0.6"

# Tasks
task docs, "Generate documents":
  rmDir "docs"
  exec "nimble doc --project --index:on -o:docs src/Unit.nim"

task docsCi, "Run Docs CI":
  exec "nim -v"
  exec "nimble -v"
  exec "nimble check"
  exec "nimble install -Y"
  exec "nimble docs -Y"

task mainCi, "Run CI":
  exec "nimble docsCi"
  exec "nimble test -Y"
