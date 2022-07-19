.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;
.super Ljava/lang/Object;
.source "H5AppHandlerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;->tryFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$api_permission:Ljava/lang/String;

.field final synthetic val$appConfigUrl:Ljava/lang/String;

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic val$fallbackResult:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;

.field final synthetic val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$api_permission:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appConfigUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$fallbackResult:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$api_permission:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 85
    .local v0, "apiByte":[B
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appConfigUrl:Ljava/lang/String;

    .line 86
    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 87
    .local v1, "configByte":[B
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 89
    .local v4, "apiMap":Ljava/util/Map;
    move-object v4, v2

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v3, "configMap":Ljava/util/Map;
    move-object v3, v2

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->apiPermissionByte:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->appConfigByte:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$fallbackResult:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;

    if-eqz v2, :cond_0

    .line 97
    const/4 v5, 0x1

    const-string v6, "fallBackSuccess"

    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;->onResult(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    return-void

    .line 104
    .end local v0    # "apiByte":[B
    .end local v1    # "configByte":[B
    .end local v3    # "configMap":Ljava/util/Map;
    .end local v4    # "apiMap":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5AppHandlerUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;->val$fallbackResult:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;

    if-eqz v0, :cond_1

    .line 106
    const/4 v1, 0x0

    const-string v2, "10011"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;->onResult(ZLjava/lang/String;)V

    .line 108
    :cond_1
    return-void
.end method
