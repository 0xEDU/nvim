return {
  "Olical/conjure",
  ft = { "clojure", "fennel" },
  init = function()
    vim.g["conjure#mapping#prefix"] ="<localleader>"
    vim.g["conjure#client#clojure#nrepl#mapping#session_clone"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_fresh"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_close"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_close_all"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_list"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_next"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_prev"] = false
    vim.g["conjure#client#clojure#nrepl#mapping#session_select"] = false
  end,
}
