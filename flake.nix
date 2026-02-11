{
    description = "A shell to build sticker packs for matrix";
    inputs = { nixpkgs.url = "nixpkgs/nixos-25.11"; };

    outputs = {nixpkgs, ...}:
        let system = "x86_64-linux";
        pkgs = import nixpkgs {inherit system;};
    in
    {
        devShell."x86_64-linux" = pkgs.mkShell {
            name = "stick-packer-dev";
            packages = with pkgs; [
				conda
			];
        };
    };
}
