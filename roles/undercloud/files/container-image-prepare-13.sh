time openstack overcloud container image prepare \
    --namespace=registry.access.redhat.com/rhosp13 \
    --push-destination=172.16.0.2:8787 \
    --prefix=openstack- \
    --output-images-file /home/stack/local_registry_images.yaml \
    --output-env-file /home/stack/templates/overcloud_images.yaml \
    --set ceph_namespace=registry.access.redhat.com/rhceph \
    --set ceph_image=rhceph-3-rhel7 \
    --tag-from-label {version}-{release} \
  -e /usr/share/openstack-tripleo-heat-templates/environments/services-docker/ironic.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/services-docker/octavia.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/manila-cephfsganesha-config.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/manila-cephfsnative-config.yaml

