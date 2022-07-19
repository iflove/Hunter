.class public Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;
.super Ljava/lang/Object;
.source "TianyanMonitorAbility.java"


# static fields
.field static sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 28
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    const/4 v1, 0x0

    .line 29
    .local v1, "delegate":Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v1, p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 35
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    const/4 v1, 0x0

    .line 36
    .local v1, "delegate":Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v1, p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;->registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static sendLocalBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 14
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    const/4 v1, 0x0

    .line 15
    .local v1, "delegate":Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v1, p0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;->sendLocalBroadcast(Landroid/content/Intent;)V

    .line 18
    :cond_0
    return-void
.end method

.method public static sendLocalBroadcastSync(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 21
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    const/4 v1, 0x0

    .line 22
    .local v1, "delegate":Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v1, p0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;->sendLocalBroadcastSync(Landroid/content/Intent;)V

    .line 25
    :cond_0
    return-void
.end method
