

//处理Flutter中所有路由的Navigator类可用于从已经push到栈的路由中获取结果。 这可以通过等待push返回的Future来完成。
//例如，如果您要启动让用户选择其位置的位置的路由，则可以执行以下操作：
//Map coordinates = await Navigator.of(context).pushNamed('/location');

//然后在你的位置路由中，一旦用户选择了他们的位置，你可以将结果”pop”出栈
//Navigator.of(context).pop({"lat":43.821757,"long":-79.226392});
