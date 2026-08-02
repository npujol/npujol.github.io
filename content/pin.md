---
type: 'slide'
title: 'Pin'
params:
    headless: true
    target: 'https://github.com/npujol'
---

This is a slide with `{{</* pin */>}}` shortcode.

## Pin it as Showcase (Example)

Section with `{{</* pin */>}}` shortcode.
The item order is column-based.
If images are not square, the layout will displayed as masonry style.

{{< pin "begin" >}}
{{< pin img="/medias/flower.jpg" label="Item 1">}}
{{< pin img="/medias/flower.jpg" label="Item 2">}}
{{< pin img="/medias/flower.jpg" label="Item 3">}}
{{< pin img="/medias/flower.jpg" label="Item 4">}}
{{< pin img="/medias/flower.jpg" label="Item 5">}}
{{< pin img="/medias/flower.jpg" label="Item 6">}}
{{< pin "end" >}}

## Pin it as Catalogue (Example)

`{{</* pin */>}}` shortcode with `quote` parameter.

{{< pin "begin" >}}
{{< pin img="/medias/flower.jpg" label="Item 1" url="#my-ecommerce" quote="<s>$299</s> $199" >}}
{{< pin img="/medias/flower.jpg" label="Item 2" url="#my-ecommerce" quote="<s>$399</s> $299" >}}
{{< pin img="/medias/flower.jpg" label="Item 3" url="#my-ecommerce" quote="Get Quote" >}}
{{< pin img="/medias/flower.jpg" label="Item 4" url="#my-ecommerce" quote="<s>$299</s> $199" >}}
{{< pin img="/medias/flower.jpg" label="Item 5" url="#my-ecommerce" quote="<s>$399</s> $299" >}}
{{< pin img="/medias/flower.jpg" label="Item 6" url="#my-ecommerce" quote="Out of stock" >}}
{{< pin "end" >}}
