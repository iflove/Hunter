.class Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$1;
.super Ljava/lang/Object;
.source "CpuInfoPolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

.field final synthetic val$cpuInfoSampling:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$1;->this$0:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$1;->val$cpuInfoSampling:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$1;->val$cpuInfoSampling:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->restart()V

    .line 70
    return-void
.end method
