.class public interface abstract Lcom/alipay/mobile/nebulax/common/config/NXConfigService;
.super Ljava/lang/Object;
.source "NXConfigService.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/Proxiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/config/NXConfigService$OnConfigChangeListener;
    }
.end annotation


# virtual methods
.method public abstract clearProcessCache()V
.end method

.method public abstract getConfig(Ljava/lang/String;Lcom/alipay/mobile/nebulax/common/config/NXConfigService$OnConfigChangeListener;)Ljava/lang/String;
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
.end method

.method public abstract getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
.end method

.method public abstract getConfigWithProcessCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putConfigCache(Ljava/lang/String;Ljava/lang/String;)V
.end method
