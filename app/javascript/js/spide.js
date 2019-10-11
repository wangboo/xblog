function watchSelect() {
   $("#spide_task_use_ip_pool").on('change', function() {
      const value = $("#spide_task_use_ip_pool").find(":selected").val();
      if (value === 'true' || value === true) {
         $("#ip_pool_size_group").show();
      } else {
         $("#ip_pool_size_group").hide();
      }
   });
}

window.spide = {
   watchSelect: watchSelect
};