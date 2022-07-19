.class public interface abstract Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
.super Ljava/lang/Object;
.source "CacheCleanerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/cleancache/CacheCleanerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheCleanExecutor"
.end annotation


# virtual methods
.method public abstract cacheClean()J
.end method

.method public abstract deepClean()J
.end method

.method public abstract getCacheSize()J
.end method

.method public abstract getDeepCleanSize()J
.end method

.method public abstract getOtherUserCacheSize()J
.end method

.method public abstract getOtherUserDeepCleanSize()J
.end method

.method public abstract periodicClean()J
.end method
