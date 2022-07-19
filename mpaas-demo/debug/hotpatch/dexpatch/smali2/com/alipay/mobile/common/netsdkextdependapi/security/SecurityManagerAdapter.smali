.class public Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityManagerAdapter;
.super Ljava/lang/Object;
.source "SecurityManagerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 42
    :cond_0
    return-object p1
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 0

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 50
    :cond_0
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 0

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 26
    :cond_0
    return-object p1
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 0

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 34
    :cond_0
    return-object p1
.end method

.method public getApDid()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public signature(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    .locals 1

    .line 15
    sget-object p1, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    sget-object p1, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->logger:Ljava/util/logging/Logger;

    const-string v0, "[SecurityManagerAdapter#signature] No signature logic implemented."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->newEmptySignData()Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object p1

    return-object p1
.end method
