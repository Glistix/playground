{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    utils.url = "github:numtide/flake-utils";
    glistix = {
      url = "github:glistix/glistix/43f85e95ef1a6cb59065dfeea52fd742e15be04d";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, utils, glistix }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = [
          glistix.packages.${system}.default
        ];
      };
    }
  );
}
