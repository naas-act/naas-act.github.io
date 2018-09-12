---
title: General Information
---

The field gets very busy at events. 

todo: some description of what it's like: camping, spit roast, Mountain View
canteen; the kind of events we hold.

See the photos below to get an impression of what NAAS events are like.

See also our videos on past events on [Youtube]({{ site.youtube }}).

{% include images-list.html subdir="img" %}
{% if imgs-list.size > 0 %}
### Photos
{% for file in imgs-list %}
<img src="{{ file }}" alt="image" class="img-responsive"/>
{% endfor %}
{% endif %}
