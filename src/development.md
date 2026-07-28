# Development Workspace

The private `AIMORAWorkspace` repository is a superproject: every component is
a Git submodule with its own history and remote.

```bash
git clone --recurse-submodules git@github.com:AIMORA-dev/AIMORAWorkspace.git AIMORA
cd AIMORA
./bin/aimora status
./bin/aimora test
```

## Change a component

```bash
cd packages/AIMORA.jl
# edit, test, commit, and push normally
cd ../..
./bin/aimora record packages/AIMORA.jl
```

`record` commits only the updated submodule pointer in the workspace. It does
not copy or flatten the child repository.

## Add another open-source package

```bash
./bin/aimora add https://github.com/sogno-platform/dpsim.git external/DPsim
./bin/aimora test
./bin/aimora record external/DPsim
```

If you have permission to push upstream, changes made inside that child can be
committed and pushed there. Otherwise, point its remote at your fork. A
submodule cannot grant write access to somebody else's repository.

Use `./bin/aimora update` to fetch the recorded branches and
`./bin/aimora publish <path>` to test, push a child, and record its new pointer.
