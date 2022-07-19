.class public Lcom/mpaas/nebula/adapter/api/MPaaSNebula$DefaultNebulaAppReady;
.super Ljava/lang/Object;
.source "MPaaSNebula.java"

# interfaces
.implements Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/adapter/api/MPaaSNebula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultNebulaAppReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;


# direct methods
.method public constructor <init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    .line 276
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$DefaultNebulaAppReady;->this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPaaSNebula"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onResult(ZZ)V
    .locals 0
    .param p1, "finish"    # Z
    .param p2, "limit"    # Z

    .line 290
    return-void
.end method

.method public prepare(Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;Ljava/lang/String;)V
    .locals 0
    .param p1, "installStep"    # Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
    .param p2, "appId"    # Ljava/lang/String;

    .line 285
    return-void
.end method
