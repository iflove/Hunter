.class public interface abstract Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
.super Ljava/lang/Object;
.source "OrderedExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunnableHandler"
.end annotation


# virtual methods
.method public abstract handleBeforeRun(Ljava/lang/Runnable;J)Ljava/lang/Runnable;
.end method

.method public abstract handleOnSubmit(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
