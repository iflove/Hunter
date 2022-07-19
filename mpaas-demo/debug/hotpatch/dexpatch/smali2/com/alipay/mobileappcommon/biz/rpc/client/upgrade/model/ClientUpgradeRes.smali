.class public Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
.super Ljava/lang/Object;
.source "ClientUpgradeRes.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4dece075ee2d1664L


# instance fields
.field public downloadURL:Ljava/lang/String;

.field public fullMd5:Ljava/lang/String;

.field public guideMemo:Ljava/lang/String;

.field public isWifi:I

.field public memo:Ljava/lang/String;

.field public netType:Ljava/lang/String;

.field public newestVersion:Ljava/lang/String;

.field public resultStatus:Ljava/lang/Integer;

.field public silentType:I

.field public upgradeVersion:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    return-void
.end method
