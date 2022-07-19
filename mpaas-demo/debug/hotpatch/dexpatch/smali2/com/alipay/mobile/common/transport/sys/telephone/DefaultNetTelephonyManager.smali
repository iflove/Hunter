.class public Lcom/alipay/mobile/common/transport/sys/telephone/DefaultNetTelephonyManager;
.super Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManagerAdapter;
.source "DefaultNetTelephonyManager.java"


# instance fields
.field private a:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManagerAdapter;-><init>()V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/sys/telephone/DefaultNetTelephonyManager;->a:Landroid/telephony/TelephonyManager;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManagerAdapter;-><init>()V

    .line 27
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/sys/telephone/DefaultNetTelephonyManager;->a:Landroid/telephony/TelephonyManager;

    .line 28
    return-void
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 3

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/sys/telephone/DefaultNetTelephonyManager;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTelManger.getCellLocation() error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultNetTelephonyManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
