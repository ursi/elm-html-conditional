module Html.Conditional exposing
    ( ifThenMaybeMap
    , if_
    , maybeMap
    , nothing
    )

import Html exposing (Html, text)
import Html.Conditional.Internal as I


if_ : Bool -> (Bool -> Html msg) -> Html msg
if_ =
    I.if_ nothing


maybeMap : (a -> Html msg) -> Maybe a -> Html msg
maybeMap =
    I.maybeMap nothing


ifThenMaybeMap : Bool -> (a -> Html msg) -> Maybe a -> Html msg
ifThenMaybeMap =
    I.ifThenMaybeMap nothing


nothing : Html msg
nothing =
    text ""
