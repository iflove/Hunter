.class public interface abstract Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessLifeCycleCallback"
.end annotation


# virtual methods
.method public abstract onProcessAdd(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
.end method

.method public abstract onProcessHide(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
.end method

.method public abstract onProcessKilled(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
.end method

.method public abstract onProcessRemove(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
.end method

.method public abstract onProcessShow(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
.end method
