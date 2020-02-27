module Css.Conditional exposing
    ( ifThenMaybeMap
    , if_
    , maybeMap
    , nothing
    )

import Css exposing (Style, batch)
import Html.Conditional.Internal as I


if_ : Bool -> (Bool -> Style) -> Style
if_ =
    I.if_ nothing


maybeMap : (a -> Style) -> Maybe a -> Style
maybeMap =
    I.maybeMap nothing


ifThenMaybeMap : Bool -> (a -> Style) -> Maybe a -> Style
ifThenMaybeMap =
    I.ifThenMaybeMap nothing


nothing : Style
nothing =
    batch []
