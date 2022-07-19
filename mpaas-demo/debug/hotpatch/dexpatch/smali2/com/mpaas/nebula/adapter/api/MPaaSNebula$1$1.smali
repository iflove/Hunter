.class Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;
.super Lcom/mpaas/nebula/adapter/api/MPaaSNebula$DefaultNebulaAppReady;
.source "MPaaSNebula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->onResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;)V
    .locals 1
    .param p1, "this$1"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;

    .line 114
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;->this$1:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;

    iget-object v0, p1, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$DefaultNebulaAppReady;-><init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;)V

    return-void
.end method


# virtual methods
.method public onReady(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 117
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;->this$1:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;

    iget-object v0, v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$nebulaAppReady:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;->this$1:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;

    iget-object v0, v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$nebulaAppReady:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    invoke-interface {v0, p1, p2}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;->onReady(Ljava/lang/String;Z)V

    .line 120
    :cond_0
    return-void
.end method
