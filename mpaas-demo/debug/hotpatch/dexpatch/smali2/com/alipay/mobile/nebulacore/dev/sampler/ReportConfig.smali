.class public Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;
.super Ljava/lang/Object;
.source "ReportConfig.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;->a:Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;->a:Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;

    .line 11
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;->a:Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 7
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSampleDelay()I
    .locals 1

    .line 15
    const/16 v0, 0x1f4

    return v0
.end method
