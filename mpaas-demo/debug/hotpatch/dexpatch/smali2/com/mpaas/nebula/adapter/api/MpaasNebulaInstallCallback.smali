.class public Lcom/mpaas/nebula/adapter/api/MpaasNebulaInstallCallback;
.super Ljava/lang/Object;
.source "MpaasNebulaInstallCallback.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppHasInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onResult(ZZ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    .line 15
    return-void
.end method
