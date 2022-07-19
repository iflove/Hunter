.class public abstract Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;
.super Ljava/lang/Object;
.source "DevicePerformanceToolset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicCpuChecker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlipayCpuLoad()F
.end method

.method public abstract getSystemCpuLoad()F
.end method

.method public abstract update()V
.end method
