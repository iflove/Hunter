.class Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;
.super Ljava/lang/Object;
.source "QcomBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# instance fields
.field acquireParams:[I

.field acquireResultHandle:I

.field config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

.field configInited:Z

.field initSucceed:Z

.field perfLockParamRomInitResult:I

.field wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->configInited:Z

    .line 339
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    .line 347
    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->perfLockParamRomInitResult:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$1;

    .line 335
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;-><init>()V

    return-void
.end method
