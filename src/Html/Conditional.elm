module Html.Conditional exposing (if_, maybeMap, nothing)

import Html exposing (Html, text)


if_ : Bool -> (Bool -> Html msg) -> Html msg
if_ condition toHtml =
    if condition then
        toHtml condition

    else
        nothing


maybeMap : (a -> Html msg) -> Maybe a -> Html msg
maybeMap toHtml maybeValue =
    case maybeValue of
        Just a ->
            toHtml a

        Nothing ->
            nothing


nothing : Html msg
nothing =
    text ""
