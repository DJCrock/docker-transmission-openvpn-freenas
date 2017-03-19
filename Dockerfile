FROM haugene/transmission-openvpn:1.15

# FreeNAS data
LABEL org.freenas.interactive="false" 							\
      org.freenas.version="1" 								\
      org.freenas.privileged="true" 							\
      org.freenas.upgradeable="true" 							\
      org.freenas.expose-ports-at-host="true" 						\
      org.freenas.autostart="true" 							\
      org.freenas.web-ui-protocol="http" 						\
      org.freenas.web-ui-port="9091" 							\
      org.freenas.web-ui-path="" 							\
      org.freenas.port-mappings="9091:9091/tcp" 					\
      org.freenas.volumes="[								\
          {										\
              \"name\": \"/config\",							\
              \"descr\": \"Config storage space\"					\
          },										\
          {										\
              \"name\": \"/data\",							\
              \"descr\": \"Downloads volume\"						\
          }										\
      ]" 										\
      org.freenas.settings="[ 								\
          {										\
              \"env\": \"OPENVPN_PROVIDER\",						\
              \"descr\": \"Sets the OpenVPN provider to use\"				\
          },										\
          {										\
              \"env\": \"OPENVPN_USERNAME\",						\
              \"descr\": \"Your OpenVPN username\"					\
          },										\
          {										\
              \"env\": \"OPENVPN_PASSWORD\",						\
              \"descr\": \"Your OpenVPN password\"					\
          },										\
          {										\
              \"env\": \"OPENVPN_CONFIG\",						\
              \"descr\": \"Sets the OpenVPN endpoint to connect to\",			\
              \"optional\": true							\
          },										\
          {										\
              \"env\": \"OPENVPN_OPTS\",						\
              \"descr\": \"Will be passed to OpenVPN on startup\",			\
              \"optional\": true							\
          },										\
          {										\
              \"env\": \"LOCAL_NETWORK\",						\
              \"descr\": \"Identifies the local network to allow access to the WebUI\",	\
              \"optional\": true							\
          },										\
          {										\
              \"env\": \"PGID\",							\
              \"descr\": \"GroupID\",							\
              \"optional\": true							\
          },										\
          {										\
              \"env\": \"PUID\",							\
              \"descr\": \"UserID\",							\
              \"optional\": true							\
         }										\
      ]"

