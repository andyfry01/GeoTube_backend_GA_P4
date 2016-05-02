json.videos @videos do |video|
  json.id video.id
  json.title video.title
  json.description video.description
  json.thumbnail video.thumbnail
  json.link video.link
  json.date video.date
  json.live video.live
end
