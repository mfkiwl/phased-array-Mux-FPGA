Module pamux(
    Input a, 
    Input b, 
    Input ia,
    Input ib,
    Input ic,
    Input id,
    Output oa,
    Output ob,
    Output oc,
    Output od) begin
    
    Wire iaoa;
    Wire iaob;
    Wire iaoc;
    Wire iaod;
    Assign iaoa = ia&((~a)&(~b));
    Assign iaob = ib&((a)&(~b));
    Assign iaoc = ic&((~a)&(b));
    Assign iaod = id&(a&b);
    Assign oa = (iaoa|iaob)|(iaoc|iaod);
    Wire iboa;
    Wire ibob;
    Wire iboc;
    Wire ibod;
    Assign iboa = ib&((~a)&(~b));
    Assign ibob = ia&((a)&(~b));
    Assign iboc = id&((~a)&(b));
    Assign ibod = ic&(a&b);
    Assign ob = (iboa|ibob)|(iboc|ibod);
    Wire icoa;
    Wire icob;
    Wire icoc;
    Wire icod;
    Assign icoa = ic&((~a)&(~b));
    Assign icob = id&((a)&(~b));
    Assign icoc = ia&((~a)&(b));
    Assign icod = ib&(a&b);
    Assign oc = (icoa|icob)|(icoc|icod);
    Wire idoa;
    Wire idob;
    Wire idoc;
    Wire idod;
    Assign daoa = id&((~a)&(~b));
    Assign idob = ic((a)&(~b));
    Assign idoc = ib&((~a)&(b));
    Assign idod = ia&(a&b);
    Assign od = (idoa|idob)|(idoc|idod);

Endmodule
