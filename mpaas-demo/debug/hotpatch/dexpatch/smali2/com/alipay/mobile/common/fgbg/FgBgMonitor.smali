.class public abstract Lcom/alipay/mobile/common/fgbg/FgBgMonitor;
.super Ljava/lang/Object;
.source "FgBgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;,
        Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;,
        Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;,
        Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/alipay/mobile/common/fgbg/FgBgMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->instance:Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->instance:Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->instance:Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->instance:Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    return-object v0
.end method


# virtual methods
.method public abstract getForegroundProcess()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
.end method

.method public abstract isInBackground()Z
.end method

.method abstract onProcessFgBgWatcherInited()V
.end method

.method public abstract registerFgBgListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;)V
.end method

.method public abstract registerScreenListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;)V
.end method

.method public abstract unregisterFgBgListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;)V
.end method

.method public abstract unregisterScreenListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;)V
.end method
