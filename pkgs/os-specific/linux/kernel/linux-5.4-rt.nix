{ stdenv, fetchurl, hostPlatform, buildPackages, perl, buildLinux, ... } @ args:

buildLinux (args // rec {
  kversion = "5.4.10";
  pversion = "rt5";
  version = "${kversion}-${pversion}";
  extraMeta.branch = "5.4";

  src = fetchurl {
    url = "mirror://kernel/linux/kernel/v5.x/linux-${kversion}.tar.xz";
    sha256 = "1p9f0h9fl1xy13dag1x7j2ic8kdv0zsp42c8baxn7cz3llc04g7j";
  };
} // (args.argsOverride or {}))
