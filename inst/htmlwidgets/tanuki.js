HTMLWidgets.widget({
  name: "tanuki",
  type: "output",
  factory: function(el) {
    let jm;
    
    return {
      renderValue: function(x) {
        x.options.container = el.id;
        jm = new jsMind(x.options);
        jm.show({
          meta: x.meta,
          format: 'node_array',
          data: x.nodes,
        });
      },
      
      resize: function(width, height) {
      },

      t: jm,
    };
  }
});
