class UserServicesService
  'use strict'

  constructor: ($cacheFactory, UserService) ->
    [@cacheFactory, @UserService] = arguments

    this

  events: (params) ->
    @UserService.$events.query(params).$promise

  service_photos: (params) ->
    @UserService.$service_photos.query(params).$promise

  findById: (id) ->
    @UserService.$r.get(id: id).$promise

  find: (params) ->
    @UserService.$r.query(params).$promise

  findWithGet: (params) ->
    @UserService.$r.get(params).$promise

  save: (params) ->
    @UserService.$r.save(params).$promise

  update: (params) ->
    @UserService.$r.update(params).$promise

  delete: (id) ->
    @UserService.$r.delete(id: id).$promise

app.service('UserServicesService', UserServicesService)
