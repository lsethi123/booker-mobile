class ServicePhotosService
  'use strict'

  constructor: ($cacheFactory, ServicePhoto, FileUploadService, API_URL) ->
    [@cacheFactory, @ServicePhoto, @FileUploadService, @API_URL] = arguments

    this

  save: (params) ->
    path = @save_path(params.service_id)

    @FileUploadService.upload('POST', path, params.photo_uri)

  update: (params) ->
    path = @update_path(params.service_id, params.photo_id)

    @FileUploadService.upload('PUT', path, params.photo_uri)

  save_path: (service_id) ->
    "#{@API_URL}/api/v1/services/#{service_id}/service_photos.json"

  update_path: (service_id, photo_id) ->
    "#{@API_URL}/api/v1/services/#{service_id}/service_photos/#{photo_id}.json"

  delete: (id) ->
    @ServicePhoto.$r.delete(id: id).$promise

app.service('ServicePhotosService', ServicePhotosService)