module Html.Styled.Attributes.Conditional exposing (if_, maybeMap, nothing)

import Html.Styled exposing (Attribute)
import Html.Styled.Attributes exposing (classList)


if_ : Bool -> (Bool -> Attribute msg) -> Attribute msg
if_ condition toAttribute =
    if condition then
        toAttribute condition

    else
        nothing


maybeMap : (a -> Attribute msg) -> Maybe a -> Attribute msg
maybeMap toAttribute maybeValue =
    case maybeValue of
        Just a ->
            toAttribute a

        Nothing ->
            nothing


nothing : Attribute msg
nothing =
    classList []
