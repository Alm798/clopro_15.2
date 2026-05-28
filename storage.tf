resource "yandex_storage_bucket" "images" {
  bucket        = var.bucket_name
  folder_id     = var.folder_id
  acl           = "public-read"
  force_destroy = true
}

resource "yandex_storage_object" "image" {
  bucket       = yandex_storage_bucket.images.bucket
  key          = "image.jpg"
  source       = "image.jpg"
  content_type = "image/jpeg"
  acl          = "public-read"
}