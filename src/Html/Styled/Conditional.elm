module Html.Styled.Conditional exposing (if_, maybeMap, nothing)

import Html.Conditional.Internal as I
import Html.Styled exposing (Html, text)


if_ : Bool -> (Bool -> Html msg) -> Html msg
if_ =
    I.if_ nothing


maybeMap : (a -> Html msg) -> Maybe a -> Html msg
maybeMap =
    I.maybeMap nothing


nothing : Html msg
nothing =
    text ""
