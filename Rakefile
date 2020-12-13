require "rake"

namespace :dotfiles do
  desc "Setup dotfiles"
  task :setup do
    install_homebrew
    update_homebrew
    install_homebrew_bundle
    install_dotfiles

    puts "Done! ✨"
  end

  def install_homebrew
    if homebrew_installed?
      puts "Homebrew located."
    else
      puts "Installing Homebrew..."
      sh %q{/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"}
    end

    tap_homebrew_bundle
  end

  def homebrew_installed?
    sh "which -s brew", cmd_options
  end

  def tap_homebrew_bundle
    sh "brew tap Homebrew/bundle", cmd_options
  end

  def update_homebrew
    puts "Updating Homebrew..."
    sh "brew update", cmd_options
  end

  def install_homebrew_bundle
    puts "Installing Homebrew Packages..."
    sh "brew bundle", cmd_options
  end

  def install_dotfiles
    puts "Installing dotfiles..."
    sh "rcup", cmd_options
  end

  def cmd_options
    { verbose: false }
  end
end

namespace :sublime do
  desc "Setup Sublime Text preferences"
  task setup: do
    path = File.expand_path(".dotfiles/sublime/Packages/User")
  end
end


