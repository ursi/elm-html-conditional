module Html.Attributes.Conditional exposing (if_, maybeMap, nothing)

import Html exposing (Attribute)
import Html.Attributes exposing (classList)
import Html.Conditional.Internal as I


if_ : Bool -> (Bool -> Attribute msg) -> Attribute msg
if_ =
    I.if_ nothing


maybeMap : (a -> Attribute msg) -> Maybe a -> Attribute msg
maybeMap =
    I.maybeMap nothing


nothing : Attribute msg
nothing =
    classList []
