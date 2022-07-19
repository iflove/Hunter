.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;
.super Ljava/lang/Object;
.source "ShouldLoadUrlPoint.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# virtual methods
.method public abstract shouldLoad(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation
.end method
