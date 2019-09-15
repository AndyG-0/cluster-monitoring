{
  // Enable or disable additional modules
  modules: [
    {
      name: 'armExporter',
      enabled: false,
      file: import 'arm_exporter.jsonnet',
    },
    {
      name: 'upsExporter',
      enabled: false,
      file: import 'ups_exporter.jsonnet',
    },
    {
      name: 'metallbExporter',
      enabled: false,
      file: import 'metallb.jsonnet',
    },
    {
      name: 'traefikExporter',
      enabled: true,
      file: import 'traefik.jsonnet',
    },
    {
      name: 'elasticExporter',
      enabled: false,
      file: import 'elasticsearch_exporter.jsonnet',
    },
  ],

  k3s: {
    enabled: true,
    master_ip: '192.168.1.38'
  },

  // Domain suffix for the ingresses
  suffixDomain: '192.168.1.38.nip.io',

  // Setting these to false, defaults to emptyDirs
  enablePersistence: {
    prometheus: false,
    grafana: true,
  },

  // Grafana "from" email
  grafana: {
    from_address: 'andy.gilbreath@gmail.com',
  },
}
