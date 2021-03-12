# Description:
#   Handle Incoming webhooks and post them to the channel
#   specified in the path
# Notes:
#

module.exports = (robot) ->
    robot.router.post '/incoming/:room', (req, res) ->
        room = req.params.room
        data = req.body.payload != null ? JSON.parse(req.body.payload) : req.body;
        secret = data.secret

        robot.messageRoom room, "this is the payload: #{data}"

        res.send 'OK'