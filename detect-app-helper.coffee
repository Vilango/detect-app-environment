if typeof UI isnt "undefined"

  
  UI.registerHelper "isBrowserApp", ->
    Meteor.AppEnv.isBrowserApp()

  UI.registerHelper "isDeviceApp", ->
    Meteor.AppEnv.isDeviceApp()

  UI.registerHelper "isDesktopApp", ->
    Meteor.AppEnv.isDesktopApp()

  UI.registerHelper "isSmartPhoneApp", ->
    Meteor.AppEnv.isSmartPhoneApp()

  UI.registerHelper "appEnv", ->
    Meteor.AppEnv.type()

