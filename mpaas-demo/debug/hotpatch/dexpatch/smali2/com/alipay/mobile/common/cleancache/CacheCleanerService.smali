.class public abstract Lcom/alipay/mobile/common/cleancache/CacheCleanerService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "CacheCleanerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;,
        Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanExecutor;,
        Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clean(Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)V
.end method

.method public abstract syncClean(Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
.end method
