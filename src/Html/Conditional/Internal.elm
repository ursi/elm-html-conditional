module Html.Conditional.Internal exposing (if_, maybeMap)


if_ : a -> Bool -> (Bool -> a) -> a
if_ nothing condition toValue =
    if condition then
        toValue condition

    else
        nothing


maybeMap : a -> (b -> a) -> Maybe b -> a
maybeMap nothing toValue maybeValue =
    case maybeValue of
        Just a ->
            toValue a

        Nothing ->
            nothing
