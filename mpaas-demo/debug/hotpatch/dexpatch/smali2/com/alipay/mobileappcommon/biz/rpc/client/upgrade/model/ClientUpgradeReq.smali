.class public Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;
.super Ljava/lang/Object;
.source "ClientUpgradeReq.java"


# instance fields
.field public apkMd5:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public clientIp:Ljava/lang/String;

.field public clientPostion:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mobileBrand:Ljava/lang/String;

.field public mobileModel:Ljava/lang/String;

.field public netType:Ljava/lang/String;

.field public osType:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public patch:Ljava/lang/String;

.field public prisonBreak:Ljava/lang/Boolean;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->prisonBreak:Ljava/lang/Boolean;

    return-void
.end method
