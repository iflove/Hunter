.class Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;
.super Ljava/lang/Object;
.source "MPaaSNebula.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->installApp(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    .line 254
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;->this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    iput-object p2, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;->val$callback:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    iput-object p3, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "b1"    # Z

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install getResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPaaSNebula"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;->val$callback:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    if-eqz v0, :cond_0

    .line 259
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;->val$appId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;->onReady(Ljava/lang/String;Z)V

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApp getResult:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
