.class public interface abstract Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
.super Ljava/lang/Object;
.source "LoadingPageHandler.java"

# interfaces
.implements Lcom/alipay/mobile/framework/loading/LoadingView$Factory;


# virtual methods
.method public abstract getPriority()I
.end method

.method public abstract needShowLoadingPage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract onCancelLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onCreateLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onFinishLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onStopLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
