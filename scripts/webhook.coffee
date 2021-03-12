# Description:
#   Handle Incoming webhooks and post them to the channel
#   specified in the path
# Notes:
#

module.exports = (robot) ->
    robot.router.post '/incoming/:room', (req, res) ->
        room = req.params.room
        data = JSON.parse req.body.payload
        secret = data.secret

        robot.messageRoom room, "this is the payload: #{data}"

        res.send 'OK'