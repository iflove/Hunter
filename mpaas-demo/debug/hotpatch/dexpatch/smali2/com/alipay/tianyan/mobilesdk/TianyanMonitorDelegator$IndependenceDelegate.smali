.class public interface abstract Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;
.super Ljava/lang/Object;
.source "TianyanMonitorDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndependenceDelegate"
.end annotation


# virtual methods
.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract sendLocalBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendLocalBroadcastSync(Landroid/content/Intent;)V
.end method
