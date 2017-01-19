def login(options)
 
   # login to RightScale
   if options[:host] && options[:email] && options[:password]
     @client = RightApi::Client.new(email: options[:email],
                                    password: options[:password],
                                    account_id: options[:account_id],
                                    api_url: options[:host]
                                   )
   elsif options[:host] && options[:refresh_token]
     @client = RightApi::Client.new(refresh_token: options[:refresh_token],
                                    account_id: options[:account_id],
                                    api_url: options[:host]
                                   )
   else
     puts 'You must provide the api_url and either email/password or refresh token'
     exit(1)
   end
end
