{ supportedSystems ? ["i686-linux" "x86_64-linux"] }:

with (import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; });

{

  # Simply assign a derivation to an attribute to have it built.
  hello_world_1 = pkgs.hello;

  # 'hydraJob' strips all non-essential attributes.
  hello_world_2 = pkgs.lib.hydraJob pkgs_x86_64_linux.hello;

}
