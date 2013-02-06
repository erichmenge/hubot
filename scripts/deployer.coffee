# Description:
#   Deploy to production
#
# Commands:
#   hubot deploy - Deploy to production
#   hubot deploy status - Get status of deployment

module.exports = (robot) ->
  robot.respond /deploy$/i, (msg) ->
    msg.http("#{process.env.DEPLOYER_URL}deploy").post() (err, res, body) ->

  robot.respond /deploy status$/i, (msg) ->
    msg.http("#{process.env.DEPLOYER_URL}status").get() (err, res, body) ->

  robot.respond /deploy rollback$/i, (msg) ->
    msg.http("#{process.env.DEPLOYER_URL}rollback").get() (err, res, body) ->
