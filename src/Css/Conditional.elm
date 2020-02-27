module Css.Conditional exposing (if_, maybeMap, nothing)

import Css exposing (Style, batch)


if_ : Bool -> (Bool -> Style) -> Style
if_ condition toStyle =
    if condition then
        toStyle condition

    else
        nothing


maybeMap : (a -> Style) -> Maybe a -> Style
maybeMap toStyle maybeValue =
    case maybeValue of
        Just a ->
            toStyle a

        Nothing ->
            nothing


nothing : Style
nothing =
    batch []
