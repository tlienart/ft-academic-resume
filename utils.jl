function env_mermaid(lxo, _)
    content = Franklin.content(lxo)
    return "@@mermaid ~~~$content~~~@@"
end
