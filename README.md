# MakePhoneCall


具体实现看项目

以下为参考

//1，这种方法，拨打完电话回不到原来的应用，会停留在通讯录里，而且是直接拨打，不弹出提示


  NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"000000000"];
    //            NSLog(@"str======%@",str);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];







//2，这种方法，打完电话后还会回到原来的程序，也会弹出提示，推荐这种


NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"00000000000"];
    UIWebView * callWebview = [[UIWebView alloc] init];
    [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebview];




//3,这种方法也会回去到原来的程序里（注意这里的telprompt），也会弹出提示


NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"telprompt://%@",@"000000000"];
    //            NSLog(@"str======%@",str);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    
    
    
