.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;
.super Ljava/lang/Object;
.source "ExtensionCallback.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onException(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V
.end method

.method public abstract onInterrupt(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V
.end method

.method public abstract onProgress(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation
.end method
