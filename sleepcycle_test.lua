
-- type = "widget"
-- name = "Sleep Cycle Shortcut Diagnostic"

function on_load()
    system:exec(
        "id; echo '--- shortcut access ---'; " ..
        "cmd shortcut has-shortcut-access com.northcube.sleepcycle; " ..
        "echo '--- shortcuts ---'; " ..
        "cmd shortcut get-shortcuts com.northcube.sleepcycle",
        "sleepcycle_diag"
    )
end

function on_shell_result_sleepcycle_diag(result)
    dialogs:show_dialog(
        "Sleep Cycle diagnostic",
        result,
        "Close"
    )
end
