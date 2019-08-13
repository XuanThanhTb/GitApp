
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:oauth2/oauth2.dart' as oauth2;

// final authorizationEndpoint = Uri.parse('http://example.com/oauth2/authorization');
// final tokenEndpoint = Uri.parse('http://example.com/oauth2/token');

// final identifier  = 'my client identifier';
// final secret = 'my client secret';
// final redirectUrl = Uri.parse('http://my-site.com/oauth2-redirect');
// final credentialsFile = File('~/.myapp/credentials.json');

// Future<oauth2.Client> getClient() async{
//   var exits = await credentialsFile.exists();
//   if(exits){
//     var credentials = oauth2.Credentials.fromJson(
//       await credentialsFile.readAsString()
//     );
//     return oauth2.Client(credentials,
//       identifier: identifier, secret: secret);
//   }
  
//   var grant = oauth2.AuthorizationCodeGrant(
//     identifier, authorizationEndpoint, tokenEndpoint,
//     secret: secret
//   );

//   await redirect(grant.getAuthorizationUrl(redirectUrl));

//   var request = await listten(redirectUrl);

//   return await grant.handleAuthorizationResponse(request.uri.queryParameters);
// }