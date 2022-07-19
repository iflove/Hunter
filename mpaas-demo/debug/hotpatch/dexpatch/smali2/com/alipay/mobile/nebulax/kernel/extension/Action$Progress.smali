.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/extension/Action$Progress;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/kernel/extension/Action;"
    }
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation
.end method
