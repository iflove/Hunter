.class public final Lcom/alipay/mobile/common/transport/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeIntParamter(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)I
    .locals 5
    .param p0, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    move-object v1, v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 46
    return v2

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    .line 50
    .local v3, "intParameter":I
    move v3, v0

    if-ne v0, v2, :cond_1

    .line 51
    return v3

    .line 53
    :cond_1
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    return v3

    .line 55
    .end local v3    # "intParameter":I
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "HttpClientUtils"

    const-string/jumbo v4, "removeIntParamter fail."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    return v2
.end method

.method public static removeParamter(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "HttpClientUtils"

    const-string v1, ""

    .line 17
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 18
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 19
    return-object v1

    .line 18
    :cond_0
    move-object v2, v3

    .line 22
    .local v2, "paramStr":Ljava/lang/String;
    invoke-interface {v4, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    .local v3, "parameter":Ljava/lang/Object;
    move-object v3, v5

    if-nez v5, :cond_1

    .line 24
    return-object v1

    .line 26
    :cond_1
    invoke-interface {v4, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 27
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 28
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    goto :goto_0

    .line 30
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[removeParamter] parameter type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 33
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 34
    return-object v1

    .line 36
    :cond_3
    return-object v2

    .line 37
    .end local v2    # "paramStr":Ljava/lang/String;
    .end local v3    # "parameter":Ljava/lang/Object;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "removeParamter fail."

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method
