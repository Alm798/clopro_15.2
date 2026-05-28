output "nlb_ip" {
  value = flatten([
    for l in yandex_lb_network_load_balancer.nlb.listener : [
      for e in l.external_address_spec : e.address
    ]
  ])[0]
}

output "image_url" {
  value = "https://storage.yandexcloud.net/${yandex_storage_bucket.images.bucket}/image.jpg"
}