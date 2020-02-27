module Html.Styled.Attributes.Conditional exposing
    ( ifThenMaybeMap
    , if_
    , maybeMap
    , nothing
    )

import Html.Conditional.Internal as I
import Html.Styled exposing (Attribute)
import Html.Styled.Attributes exposing (classList)


if_ : Bool -> (Bool -> Attribute msg) -> Attribute msg
if_ =
    I.if_ nothing


maybeMap : (a -> Attribute msg) -> Maybe a -> Attribute msg
maybeMap =
    I.maybeMap nothing


ifThenMaybeMap : Bool -> (a -> Attribute msg) -> Maybe a -> Attribute msg
ifThenMaybeMap =
    I.ifThenMaybeMap nothing


nothing : Attribute msg
nothing =
    classList []
