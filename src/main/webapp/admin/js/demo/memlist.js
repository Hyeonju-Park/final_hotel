// Call the dataTables jQuery plugin
$(document).ready(function(){
  $('#dataTable').dataTable({
  		ajax:{
  		"url":"/project/admin/cjy/searchmem",
  		"dataType":"json",
  		"dataSrc":"list"
  		 },
         columns:[
         	{"data": "mid"},
         	{"data": "mpw"},
         	{"data": "mname"},
         	{"data": "mphone"},
         	{"data": "memail"},
         	{"data": "mrdate"},
         	{"data": "mbirth"},
         	{"data": "mprofile", render: getImg},
         	{"data": "mdrop"}
         	],
         	dom: 'Bfrtip',
         	buttons: [
            'copy', 'excel', 'pdf', 'print'
        ],
         });
     function getImg(list, type, full, meta) {
	     if(list!=null){
	            return "<img src='/project/resources/images/members/"+list+"' width='150' height='150'>";
	     }else{
	     	return "";
	     }
	 }
});