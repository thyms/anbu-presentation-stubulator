exports.index = (req, res) ->
  res.render "index",
    title: "anbu Presentation Stubulator"

status =
  show: (req, res) ->
    res.render "status/show",
      title: "anbu Presentation-Stubulator Status"

exports.status = status
