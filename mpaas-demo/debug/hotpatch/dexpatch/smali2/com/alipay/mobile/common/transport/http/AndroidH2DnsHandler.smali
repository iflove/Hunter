.class public Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;
.super Ljava/lang/Object;
.source "AndroidH2DnsHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;,
        Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const-string/jumbo v0, "resolveInetAddresses"

    const-string v1, "lookup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->b:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, [Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->c:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "methodDesc"    # Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;

    .line 267
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;)V

    .line 268
    .local v0, "resolveDnsResult":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 269
    .local v3, "dnsClient":Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 270
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    move-object v4, v2

    .line 272
    .local v2, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .local v4, "addressArray":[Ljava/net/InetAddress;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v3, p1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;

    move-result-object v1

    .end local v4    # "addressArray":[Ljava/net/InetAddress;
    .local v1, "addressArray":[Ljava/net/InetAddress;
    goto :goto_0

    .line 275
    .end local v1    # "addressArray":[Ljava/net/InetAddress;
    .restart local v4    # "addressArray":[Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 277
    .end local v4    # "addressArray":[Ljava/net/InetAddress;
    .restart local v1    # "addressArray":[Ljava/net/InetAddress;
    :goto_0
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 278
    const-string v4, "dnsClient"

    iput-object v4, v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->dnsFrom:Ljava/lang/String;

    .line 279
    invoke-static {v1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a([Ljava/net/InetAddress;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->addresses:Ljava/lang/Object;

    .line 280
    return-object v0

    .line 283
    .end local v1    # "addressArray":[Ljava/net/InetAddress;
    .end local v2    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    :cond_1
    const-string v1, "localdns"

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->dnsFrom:Ljava/lang/String;

    .line 284
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a([Ljava/net/InetAddress;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->addresses:Ljava/lang/Object;

    .line 285
    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string v0, "[invokeFromRawObj] Exception = "

    const-string v1, "AndroidH2DnsHandler"

    .line 195
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->d:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    :cond_0
    const-string v2, "localdns"

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 206
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->d:Ljava/lang/Object;

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v3, "object":Ljava/lang/Object;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "invokeFromRawObj execution finish. raw class = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->d:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], methodName=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", value = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-object v3

    .line 216
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 216
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v3, v2

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 217
    .local v4, "targetException":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "targetException":Ljava/lang/Throwable;
    nop

    .line 221
    :goto_1
    return-object v2

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rawAndroidH2DnsHandler field is null, you must first call this \'setRawAndroidH2DnsHandler\' to set the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Ljava/net/InetAddress;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Ljava/lang/Object;
    .locals 3
    .param p0, "returnValue"    # [Ljava/net/InetAddress;
    .param p1, "methodDesc"    # Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;

    .line 143
    if-eqz p0, :cond_1

    .line 148
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodReturnType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 149
    return-object p0

    .line 152
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "inetAddrlist":Ljava/util/List;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adapteReturnValue. returnValue=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidH2DnsHandler"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0

    .line 144
    .end local v0    # "inetAddrlist":Ljava/util/List;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapteReturnValue.  returnValue maybe null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "addresses"    # Ljava/lang/Object;
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "dnsFrom"    # Ljava/lang/String;

    .line 160
    const-string v0, "AndroidH2DnsHandler"

    if-nez p0, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "printLog. DNS resolution failed. hostName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 171
    .local v1, "count":I
    const-string v2, ""

    .line 173
    .local v2, "ips":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Ljava/net/InetAddress;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 174
    move-object v3, p0

    check-cast v3, [Ljava/net/InetAddress;

    check-cast v3, [Ljava/net/InetAddress;

    move-object v4, v5

    .line 175
    .local v4, "tmpInetAddress":[Ljava/net/InetAddress;
    move-object v4, v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 176
    array-length v3, v4

    move v1, v3

    .line 177
    .end local v4    # "tmpInetAddress":[Ljava/net/InetAddress;
    goto :goto_0

    :cond_1
    const-class v3, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    move-object v3, p0

    check-cast v3, Ljava/util/List;

    move-object v4, v5

    .line 179
    .local v4, "tmpInetAddressList":Ljava/util/List;
    move-object v4, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 181
    .end local v4    # "tmpInetAddressList":Ljava/util/List;
    goto :goto_0

    .line 182
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "printLog. Unknown address object type it\'s = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "printLog. DNS resolution is complete. dnsFrom = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hostName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", addresses len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",ips = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v1    # "count":I
    .end local v2    # "ips":Ljava/lang/String;
    return-void

    .line 188
    :catchall_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "printLog. finally process exception "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(JILjava/lang/Throwable;)Z
    .locals 9
    .param p0, "tStartDnsTime"    # J
    .param p2, "retryCount"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 291
    .local v4, "dnsCost":J
    move-wide v4, v0

    const/4 v6, 0x0

    const-string v7, "AndroidH2DnsHandler"

    cmp-long v8, v0, v2

    if-ltz v8, :cond_2

    const-wide/16 v0, 0x2ee0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    const/16 v0, 0xa

    if-lt p2, v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[isCanRetryDns] Can not redns. retryCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return v6

    .line 302
    :cond_1
    const-string v0, "[isCanRetryDns] Will sleep 1s."

    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    nop

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[isCanRetryDns] Can redns. Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    return v0

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    .local v0, "es":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[isCanRetryDns] sleep exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v6

    .line 292
    .end local v0    # "es":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[isCanRetryDns] Can not redns\uff0c dnsCost = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",  Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v6
.end method

.method private static a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Z
    .locals 8
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "methodDesc"    # Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;

    .line 231
    const-string v0, "AndroidH2DnsHandler"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_4

    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 237
    .local v2, "currentReturnType":Ljava/lang/Class;
    sget-object v3, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->c:[Ljava/lang/Class;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 238
    .local v6, "tmpReturnClazz":Ljava/lang/Class;
    if-ne v2, v6, :cond_1

    .line 239
    iput-object v2, p2, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodReturnType:Ljava/lang/Class;

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preCheck. dnsMethodReturnType is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    goto :goto_1

    .line 237
    .end local v6    # "tmpReturnClazz":Ljava/lang/Class;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :cond_2
    :goto_1
    iget-object v3, p2, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodReturnType:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 246
    return v1

    .line 249
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "currentMethodName":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->b:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 251
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preCheck. dnsMethodName is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object v3, p2, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodName:Ljava/lang/String;

    .line 254
    goto :goto_3

    .line 250
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 258
    :cond_5
    :goto_3
    iget-object v0, p2, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    return v1

    .line 262
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 232
    .end local v2    # "currentReturnType":Ljava/lang/Class;
    .end local v3    # "currentMethodName":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string/jumbo v2, "preCheck. args count < 1 "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return v1
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;
    .locals 2

    .line 37
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    if-eqz v1, :cond_1

    .line 42
    monitor-exit v0

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    .line 45
    monitor-exit v0

    .line 46
    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "rawdns"

    const-string v5, "AndroidH2DnsHandler"

    .line 56
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;)V

    move-object v6, v0

    .line 58
    .local v6, "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    invoke-static {v2, v3, v6}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v7, 0x0

    .line 64
    .local v7, "addresses":Ljava/lang/Object;
    const-string v8, ""

    .line 65
    .local v8, "hostName":Ljava/lang/String;
    const-string v9, ""

    .line 68
    .local v9, "dnsFrom":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    aget-object v0, v3, v10

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 70
    iget-object v0, v6, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_1

    .line 71
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Invoke method name it\'s "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", method name not "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object v9, v4

    .line 73
    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    move-object v4, v0

    .line 131
    .end local v7    # "addresses":Ljava/lang/Object;
    .local v4, "addresses":Ljava/lang/Object;
    invoke-static {v4, v8, v9}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v0

    .line 122
    .end local v4    # "addresses":Ljava/lang/Object;
    .restart local v7    # "addresses":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_3

    .line 119
    :catch_0
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_4

    .line 77
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-static {v8}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v12

    aput-object v12, v0, v10

    move-object v10, v11

    .line 79
    .local v10, "tmpInetAddress":[Ljava/net/InetAddress;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a([Ljava/net/InetAddress;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    move-object v4, v0

    .line 131
    .end local v7    # "addresses":Ljava/lang/Object;
    .restart local v4    # "addresses":Ljava/lang/Object;
    invoke-static {v4, v8, v9}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v0

    .line 84
    .end local v4    # "addresses":Ljava/lang/Object;
    .end local v10    # "tmpInetAddress":[Ljava/net/InetAddress;
    .restart local v7    # "addresses":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 85
    .local v0, "hitFastReturnFalse":Z
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v12
    :try_end_4
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object v13, v11

    .line 86
    .local v13, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v13, v12

    if-eqz v12, :cond_3

    .line 87
    :try_start_5
    invoke-virtual {v13}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isFastReturnFailure()Z

    move-result v12

    if-eqz v12, :cond_3

    iget v12, v13, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskRetryedCount:I
    :try_end_5
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v12, :cond_3

    .line 89
    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    .line 122
    .end local v0    # "hitFastReturnFalse":Z
    .end local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    move-object v11, v13

    goto/16 :goto_3

    .line 92
    .restart local v0    # "hitFastReturnFalse":Z
    .restart local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    :cond_3
    move v12, v0

    .end local v0    # "hitFastReturnFalse":Z
    .local v12, "hitFastReturnFalse":Z
    :goto_0
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_6
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 93
    .local v14, "tStartDnsTime":J
    const/4 v0, 0x0

    move-object/from16 v16, v9

    move v9, v0

    move-object v0, v11

    .line 96
    .local v9, "i":I
    .local v16, "dnsFrom":Ljava/lang/String;
    :goto_1
    :try_start_7
    invoke-direct {v1, v8, v6}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;)Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;

    move-result-object v10

    .line 97
    .local v0, "resolveDnsResult":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;
    move-object v0, v10

    iget-object v10, v10, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->dnsFrom:Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 98
    .end local v16    # "dnsFrom":Ljava/lang/String;
    .local v10, "dnsFrom":Ljava/lang/String;
    :try_start_8
    iget-object v4, v0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->addresses:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 99
    move-object v5, v4

    .line 131
    .end local v7    # "addresses":Ljava/lang/Object;
    .local v5, "addresses":Ljava/lang/Object;
    invoke-static {v5, v8, v10}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v4

    .line 122
    .end local v0    # "resolveDnsResult":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;
    .end local v5    # "addresses":Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v12    # "hitFastReturnFalse":Z
    .end local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .end local v14    # "tStartDnsTime":J
    .restart local v7    # "addresses":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    move-object v9, v10

    move-object v11, v13

    goto/16 :goto_3

    .line 119
    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    move-object v9, v10

    goto/16 :goto_4

    .line 100
    .restart local v9    # "i":I
    .restart local v12    # "hitFastReturnFalse":Z
    .restart local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .restart local v14    # "tStartDnsTime":J
    :catch_2
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_2

    .line 122
    .end local v9    # "i":I
    .end local v10    # "dnsFrom":Ljava/lang/String;
    .end local v12    # "hitFastReturnFalse":Z
    .end local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .end local v14    # "tStartDnsTime":J
    .restart local v16    # "dnsFrom":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v6

    move-object v11, v13

    move-object/from16 v9, v16

    goto/16 :goto_3

    .line 119
    :catch_3
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v9, v16

    goto/16 :goto_4

    .line 100
    .restart local v9    # "i":I
    .restart local v12    # "hitFastReturnFalse":Z
    .restart local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .restart local v14    # "tStartDnsTime":J
    :catch_4
    move-exception v0

    .line 102
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_2
    :try_start_9
    invoke-static {v14, v15, v9, v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(JILjava/lang/Throwable;)Z

    move-result v10
    :try_end_9
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-nez v10, :cond_5

    .line 106
    if-nez v12, :cond_4

    .line 107
    nop

    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .end local v7    # "addresses":Ljava/lang/Object;
    .end local v8    # "hostName":Ljava/lang/String;
    .end local v16    # "dnsFrom":Ljava/lang/String;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    :try_start_a
    throw v0
    :try_end_a
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 111
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v7    # "addresses":Ljava/lang/Object;
    .restart local v8    # "hostName":Ljava/lang/String;
    .restart local v16    # "dnsFrom":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_4
    :try_start_b
    const-string v10, "[invoke] Hin fast return failure."

    invoke-static {v5, v10}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v10, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v17, 0x9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_b
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v17, v6

    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .local v17, "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :try_start_c
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v11, v6, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    .line 113
    .local v6, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v6, v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpException;->setCanRetry(Z)V

    .line 114
    nop

    .end local v7    # "addresses":Ljava/lang/Object;
    .end local v8    # "hostName":Ljava/lang/String;
    .end local v16    # "dnsFrom":Ljava/lang/String;
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6
    :try_end_c
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 122
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v6    # "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .end local v9    # "i":I
    .end local v12    # "hitFastReturnFalse":Z
    .end local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .end local v14    # "tStartDnsTime":J
    .restart local v7    # "addresses":Ljava/lang/Object;
    .restart local v8    # "hostName":Ljava/lang/String;
    .restart local v16    # "dnsFrom":Ljava/lang/String;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object v11, v13

    move-object/from16 v9, v16

    goto :goto_3

    .line 119
    :catch_5
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_4

    .line 102
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    .local v6, "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v9    # "i":I
    .restart local v12    # "hitFastReturnFalse":Z
    .restart local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .restart local v14    # "tStartDnsTime":J
    :cond_5
    move-object/from16 v17, v6

    move-object v6, v11

    const/4 v11, 0x0

    .line 93
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    add-int/lit8 v9, v9, 0x1

    move-object v11, v6

    move-object/from16 v6, v17

    const/4 v10, 0x0

    goto :goto_1

    .line 122
    .end local v9    # "i":I
    .end local v12    # "hitFastReturnFalse":Z
    .end local v13    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .end local v14    # "tStartDnsTime":J
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v6

    move-object v11, v13

    move-object/from16 v9, v16

    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    goto :goto_3

    .line 119
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v9, v16

    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    goto :goto_4

    .line 122
    .end local v16    # "dnsFrom":Ljava/lang/String;
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .local v9, "dnsFrom":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v17, v6

    move-object v11, v13

    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    goto :goto_3

    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v6

    move-object v6, v11

    .line 123
    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :goto_3
    :try_start_d
    const-string v6, "[invoke] error. "

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    move-object v9, v4

    .line 125
    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v5, v11

    .line 126
    .local v5, "object":Ljava/lang/Object;
    move-object v5, v4

    if-eqz v4, :cond_6

    .line 127
    nop

    .line 131
    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v5

    .line 129
    :cond_6
    nop

    .end local v7    # "addresses":Ljava/lang/Object;
    .end local v8    # "hostName":Ljava/lang/String;
    .end local v9    # "dnsFrom":Ljava/lang/String;
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    :try_start_e
    throw v0

    .line 119
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "object":Ljava/lang/Object;
    .restart local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local v7    # "addresses":Ljava/lang/Object;
    .restart local v8    # "hostName":Ljava/lang/String;
    .restart local v9    # "dnsFrom":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    .line 120
    .end local v6    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .local v0, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    :goto_4
    const-string v4, "[invoke] http exception "

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    nop

    .end local v7    # "addresses":Ljava/lang/Object;
    .end local v8    # "hostName":Ljava/lang/String;
    .end local v9    # "dnsFrom":Ljava/lang/String;
    .end local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 131
    .end local v0    # "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .restart local v7    # "addresses":Ljava/lang/Object;
    .restart local v8    # "hostName":Ljava/lang/String;
    .restart local v9    # "dnsFrom":Ljava/lang/String;
    .restart local v17    # "methodDesc":Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catchall_8
    move-exception v0

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setRawAndroidH2DnsHandler(Ljava/lang/Object;)V
    .locals 0
    .param p1, "rawAndroidH2DnsHandler"    # Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->d:Ljava/lang/Object;

    .line 139
    return-void
.end method
