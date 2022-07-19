.class public interface abstract Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
.super Ljava/lang/Object;
.source "LifecycleCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuinoxInstrumentCallback"
.end annotation


# virtual methods
.method public abstract onCallActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onCallActivityOnDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract onCallActivityOnPause(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnRestart(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnResume(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnStart(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnStop(Landroid/app/Activity;)V
.end method

.method public abstract onCallActivityOnUserLeaving(Landroid/app/Activity;)V
.end method

.method public abstract onNewActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V
.end method
