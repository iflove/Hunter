.class public Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;
.super Ljava/lang/Object;
.source "CpuInfoPolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;
    }
.end annotation


# static fields
.field private static final a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;
    .locals 1

    .line 23
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    return-object v0
.end method


# virtual methods
.method public restart()V
    .locals 0

    .line 53
    return-void
.end method

.method public start()V
    .locals 0

    .line 36
    return-void
.end method

.method public stop()V
    .locals 0

    .line 76
    return-void
.end method
