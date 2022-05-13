resource "google_service_account" "sa-demo01" {
  account_id   = "sa-demo"
  display_name = "Service Account pour test de demo"
}

resource "google_compute_instance" "instance01" {
  name         = "gce-testdemo01"
  machine_type = "f1-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    //maybe you don't have a default network on your projet.
    // in this case use for example instead: subnetwork  = "projects/MYPROJECT/regions/MYREGION/subnetworks/MYSUBNETNAME"
    network = "default"

    // remove that if you don't want public IP for your instance
    access_config {
      // Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.sa-demo01.email
    scopes = ["cloud-platform"]
  }
}
