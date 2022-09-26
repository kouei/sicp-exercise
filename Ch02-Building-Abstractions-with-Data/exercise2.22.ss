; The result is in reverse order because newly squared element is added to the head of the list.
; The modified version doesn't work as well because it breaks the contract of list.
; The pattern of list is (cons some-element list-of-other-elements) rather than (cons list-of-other-elements some-element)