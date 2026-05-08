"""Richer Console Plugin - Rich-enhanced console.

This plugin provides Rich-enhanced console output for Jac CLI.
It overrides the base console implementation to provide elegant,
colorful terminal output with themes, panels, tables, and spinners.
"""
import from jaclang.jac0core.runtime { hookimpl, plugin_manager }
import from jaclang.cli.console { JacConsole as BaseJacConsole }

"""Richer Plugin for console enhancement."""
class RicherPlugin {
    """Get the Rich-enhanced console instance."""
    @hookimpl
    static def get_console -> BaseJacConsole {
        return RicherConsole();
    }
}

# Register the plugin
with entry {
    plugin_manager.register(RicherPlugin());
}
