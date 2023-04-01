# API documentation for [`sfinv_buttons`]

Use this very simple API to add your own buttons to the new tab. There is only
one function: `sfinv_buttons.register_button`.

## `sfinv_buttons.register_button(name, def)`

* `name`: Unique button identifier
* `def`: Configuration table (see below)

### Fields of `def`
* `title`: Human-readable text on the button
* `action(player)`: Function is called when button is triggered
    * `player`: The `ObjectRef` of the player who triggered the button
    * Default behaviour: Nothing happens
* `tooltip: A tooltip for the button (optional, only use it for an additional,
  non-critical explanation)
* `image`: Texture name for the image to show left of the button (optional)
* `show(player)`: Shall return `true` if the button should be displayed (optional)
    * `player`: ObjectRef to player who triggered the button
    * Default: Always shows button

## Recommendations

* Try to summarize the most important information on the button
* Test if the button title still fits when having >= 9 and <= 18 buttons at a
  resolution of 800×600
* It is recommended to only add buttons to access core mod functionality and
  not for every minor feature. The rule of thumb is to add at most 1 button per mod
* If you like to add many buttons, consider adding your own `sfinv` page instead 
