---
title: Sample Article
author: Jane Doe
section: "OPENING: FREEDOM"
layout: book
previous: <a href="keeping-promises">Keeping Promises</a>
up: '<a href="./">OPENING: FREEDOM</a>'
next: <a href="freedom-to-vs-freedom-from">"Freedom To" vs. "Freedom From"</a>
---

This is a template.  The YAML start mentions title, author, section,
layout, previous, up, and next pages.

Section in this example is 'OPENING: FREEDOM' because of the special
handling of the colon.  Other sections do not have this issue.

The previous, up, and next links must be HTML because we can't do
markdown there, unfortunately.

Above the title is the navigation bar. All links are ready, you just need to put __bold__ around the correct section. Section pages are special: they don't have the link to themselves.

The signature is also HTML because we want to put the CSS class.

<p class="author bio">This is an 'author bio' paragraph. The <a href="../authors/jane-doe">{{page.author}}</a> can be linked to ../authors/first-lastname using HTML.</p>
