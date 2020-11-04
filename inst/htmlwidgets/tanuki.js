HTMLWidgets.widget({
  name: "tanuki",
  type: "output",
  factory: function(el) {
    let jm;
    
    return {
      renderValue: function(meta, options, nodes) {
        options.container = el.id;
        jm = new jsMind(options);
        jm.show({
          meta: meta,
          format: 'node_array',
          data: [
            {"id":"root", "isroot":true, "topic":"jsMind"},
            {"id":"easy", "parentid":"root", "topic":"Easy", "direction":"left"},
            {"id":"easy1", "parentid":"easy", "topic":"Easy to show"},
          ],
        });
      },
      
      // resize: function(width, height) {
      // }

      t: jm,
    };
  }
});
