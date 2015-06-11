# Write your package code here!
AppEnv = ->
  # Constructor
  @_deps = new Deps.Dependency
  @_type = "browserApp"
  return

AppEnv::type = ->
  @_deps.depend()
  @_type

AppEnv::isType = (type) ->
  type is @type()

# Helper Functions
AppEnv::isBrowserApp = ->
  @isType "browerApp"

AppEnv::isDesktopApp = ->
  @isType "desktopApp"

AppEnv::isSmartPhoneApp = ->
  @isType "smartPhoneApp"

AppEnv::isDeviceApp = ->
  @isDesktopApp() || @isSmartPhoneApp()


AppEnv::detect = ->
  @_type = (->
    if gui?
      return "desktopApp"
    else if Meteor.isCordova
      return "smartPhoneApp"
    else
      return "browerApp"
  )()
  @_deps.changed()
  return

Meteor.AppEnv = new AppEnv
Meteor.AppEnv.detect()