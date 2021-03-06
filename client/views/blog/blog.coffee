Template.blogShowBody.rendered = ->

  # Twitter
  base = "https://twitter.com/intent/tweet"
  url = encodeURIComponent location.origin + location.pathname
  author = @data.author()
  text = encodeURIComponent @data.title
  href = base + "?url=" + url + "&text=" + text

  if author.profile and author.profile.twitter
    href += "&via=" + author.profile.twitter

  $(".tw-share").attr "href", href

  # Facebook
  base = "https://www.facebook.com/sharer/sharer.php"
  url = encodeURIComponent location.origin + location.pathname
  title = encodeURIComponent @data.title
  summary = encodeURIComponent @data.excerpt()
  href = base + "?s=100&p[url]=" + url + "&p[title]=" + title + "&p[summary]=" + summary

  if @data.thumbnail()
    href += "&p[images][0]=" + encodeURIComponent @data.thumbnail()

  $(".fb-share").attr "href", href
