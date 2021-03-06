wdefine(function(){
	function stageFormatter(cellValue, opts, rowdata, act) {
		return rowdata['stages'] + ' / ' + cellValue;
	}
	
	function sqlFormatter(cellValue, opts, rowdata, act) {
		return rowdata['sqls'] + ' / ' + cellValue;
	}
	$app.metadata('operationmenu', {groups: [
	                                         {menus : [{id:'back', icon:'icon-backward', name: 'Back'},
	                                                   {id:'stages', icon: 'icon-edit', tip: 'Stages'}
	                                         		  ]
	                                         }
	                                        ]
	                               });
	$app.metadata('detailstab', {items: [{id: 'item1', text: 'Method Stack'}, {id: 'item2', text: 'Sql Information'}]});
	var navId = $app.reqData('navId');
	var restBase = $app.reqData("urlBase");
	$app.model('stagesmodel', {url: restBase + '/' + navId + "/stageinfos", idAttribute: 'callId'});
	$app.metadata('stagegrid', {model: 'stagesmodel', height:230, pagination: null,
						columns:[
	                                  {name: 'callId', text:'Id', width:80},
	                                  {name: 'duration', text:'Duration', width:40},
	                                  {name: 'stageName', text:'Name', width:70},
	                                  {name: 'stagePath', text:'Req Path', width:90},
	                                  {name: 'stageMethod', text:'Req Method', width:60},
	                                  {name: 'sumStageCount', text:'Sum Stages', width:40, align:"right", formatter: stageFormatter},        
	                                  {name: 'sumSqlCount', text:'Sum Sqls', width:40, align:"right", formatter: sqlFormatter},
	                                  {name: 'conns', text:'Db Conns', width:40, align:"right"},
//	                                  {name: 'attachToAsyncId', text:'Attach', width:40},
	                                  {name: 'async', text:'Async', width:40}
	                          	]
						}
				);
	$app.metadata('methodForm', {model: 'stagesmodel', rows: 1, elements:[{name:'detachedMethod', width: '100%', height: '200', editable: false, theme: 'default', editorType: 'input_highlight'}]});
	$app.metadata('sqlsForm', {model: 'stagesmodel', rows: 1, elements:[{name:'detachedSql', width: '100%', height: '200', editable: false, theme: 'default', editorType: 'input_highlight'}]});
});