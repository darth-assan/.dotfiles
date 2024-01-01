if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# Add Rust and Cargo to PATH
set -x PATH $HOME/.cargo/bin $PATH

function python
    python3 $argv; or command python $argv;
end

# Set environment variables for Rust
set -x RUSTUP_HOME $HOME/.rustup
set -x CARGO_HOME $HOME/.cargo
zoxide init fish | source
thefuck --alias | source

