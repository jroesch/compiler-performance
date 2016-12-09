import system.io

set_option native.library_path "/Users/jroesch/Git/lean/build/debug"
set_option native.include_path "/Users/jroesch/Git/lean_install/include/lean_ext"

-- This flag controls whether lean will automatically invoke C++
-- set_option native.emit_dwarf true
-- set_option native.dump "anf"
-- set_option trace.compiler true

def for {A : Type} : ℕ → A → (ℕ → A → A) -> A
| 0 default _ := default
| (n + 1) default f := for n (f n default) f

def main : io unit :=
  put_str_ln $ for 1000 0 (fun i sum, sum + i)
