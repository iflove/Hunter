.class public Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerAdapter;
.super Ljava/lang/Object;
.source "AppInfoManagerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "UnknowProductId"

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "UnknownProductVersion"

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "UnknowReleaseType"

    return-object v0
.end method

.method public getTrackerID()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, "UnknowTrackerID"

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isReleaseTypeDev()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isReleaseTypeRC()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method
