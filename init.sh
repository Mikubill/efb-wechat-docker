#!/usr/bin/with-contenv bash
sed -i "s/token123456/$TOKEN/g" /opt/app/ehforward_config/profiles/${PROFILE}/blueset.telegram/config.yaml 
sed -i "s/admin123456/$ADMIN/g" /opt/app/ehforward_config/profiles/${PROFILE}/blueset.telegram/config.yaml
ehforwarderbot -p ${PROFILE}
