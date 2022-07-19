.class public Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;
.super Ljava/lang/Object;
.source "MPNebulaOfflineInfo.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public offLineFileName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "offLineFileName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->offLineFileName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->appId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->version:Ljava/lang/String;

    .line 29
    return-void
.end method
