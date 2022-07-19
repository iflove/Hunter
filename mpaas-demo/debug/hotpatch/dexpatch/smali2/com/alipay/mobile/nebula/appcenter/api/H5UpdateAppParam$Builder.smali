.class public Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
.super Ljava/lang/Object;
.source "H5UpdateAppParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    .line 125
    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    return-object v0
.end method

.method public setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "appMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appMap:Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$002(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Ljava/util/Map;)Ljava/util/Map;

    .line 129
    return-object p0
.end method

.method public setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appReq:Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$402(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 149
    return-object p0
.end method

.method public setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "downLoadAmr"    # Z

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downLoadAmr:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$202(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z

    .line 139
    return-object p0
.end method

.method public setDownloadRandom(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "downloadRandom"    # Z

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downloadRandom:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$502(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z

    .line 154
    return-object p0
.end method

.method public setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "forceRpc"    # Z

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->forceRpc:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$302(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z

    .line 144
    return-object p0
.end method

.method public setFromWholeNetwork(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "fromWholeNetwork"    # Z

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->fromWholeNetwork:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$802(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z

    .line 169
    return-object p0
.end method

.method public setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "resPackageList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->resPackageList:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$602(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Ljava/util/List;)Ljava/util/List;

    .line 159
    return-object p0
.end method

.method public setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "startTime"    # J

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->startTime:J
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$702(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)J

    .line 164
    return-object p0
.end method

.method public setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1
    .param p1, "installProcess"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->target:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->access$102(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 134
    return-object p0
.end method
