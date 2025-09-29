class Maps < Formula
  desc "With the Command Line Interface you can access HERE Map Making service from a command line or with scripts."
  url "https://github.com/heremaps/homebrew-map-making-cli/releases/download/17.5.35/maps_cli_2.12-17.5.35.tar.gz"
  sha256 "727f70303b247b3d0a0c97a713b9ab1651099cf8042ac0d90b2e82195012ba6f"
  version "17.5.35"
  license "Proprietary"

  depends_on "openjdk@17"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-17.5.35.jar"
    # There are two versions of variables: build time and runtime
    # JAVA_VERSION, ALLOW_DEEP_REFLECTION, 2 and @ needs to be preserved during build time by using $ instead of $
    (bin/"maps").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env("17")[:JAVA_HOME]}"
      JAVA_VERSION=$(${JAVA_HOME}/bin/java -Xms32M -Xmx32M -version 2>&1 | awk -F '"' '/version/ {print $2}')
      # Check for '1.' entry because starting from JDK 9 version numbering is different (1.8 vs 9.0/10.0/11.0/... )
      if ! [[ "$JAVA_VERSION" =~ ^1"."+ ]]; then
        ALLOW_DEEP_REFLECTION="--add-opens java.base/java.lang=ALL-UNNAMED --add-opens=java.base/sun.security.util=ALL-UNNAMED"
      fi
      exec "${JAVA_HOME}/bin/java" ${ALLOW_DEEP_REFLECTION:-} -Dfile.encoding=UTF8 -cp "#{libexec}/cli_2.12-17.5.35.jar" "com.here.platform.cli.MapsMain" "$@"
    EOS
  end

  test do
    system bin/"maps", "--help"
  end

end
