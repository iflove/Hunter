.class public Lcom/alipay/mobile/common/transport/utils/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field public static final SCENE_QUICK:Ljava/lang/String; = "quick"

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/ConnectivityHelper;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnState()I
    .locals 1

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getConnState()I

    move-result v0

    return v0
.end method

.method public static isConnAvailable()Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isConnectionAvailable()Z

    move-result v0

    return v0
.end method

.method public static isShowRedText()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/ConnectivityHelper;->a:Z

    return v0
.end method

.method public static notifyRedText(Z)V
    .locals 0
    .param p0, "show"    # Z

    .line 29
    sput-boolean p0, Lcom/alipay/mobile/common/transport/utils/ConnectivityHelper;->a:Z

    .line 30
    return-void
.end method

.method public static notifyScene(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "scene"    # Ljava/lang/String;
    .param p1, "pass"    # Z

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->setScene(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method
