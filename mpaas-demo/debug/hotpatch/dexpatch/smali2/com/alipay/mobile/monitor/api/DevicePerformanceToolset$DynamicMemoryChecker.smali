.class public abstract Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;
.super Ljava/lang/Object;
.source "DevicePerformanceToolset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicMemoryChecker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlipayMemory(Landroid/content/Context;)J
.end method

.method public abstract getAvailableMemory(Landroid/content/Context;)J
.end method

.method public abstract isLowMemory(Landroid/content/Context;)Z
.end method
