.class public interface abstract Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
.super Ljava/lang/Object;
.source "ConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/base/config/ConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigChangeListener"
.end annotation


# virtual methods
.method public abstract getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
.end method
