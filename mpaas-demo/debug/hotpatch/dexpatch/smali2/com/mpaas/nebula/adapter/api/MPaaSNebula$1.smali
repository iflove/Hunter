.class Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "MPaaSNebula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->startUpdateApp(Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

.field final synthetic val$finalAppMap:Ljava/util/Map;

.field final synthetic val$nebulaAppReady:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    .line 106
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    iput-object p2, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$finalAppMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$nebulaAppReady:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    .line 108
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$finalAppMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 112
    .local v0, "appIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    new-instance v4, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;

    invoke-direct {v4, p0}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1$1;-><init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;)V

    invoke-virtual {v3, v2, v4}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->ensureApp(Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V

    .line 123
    .end local v2    # "appId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 126
    .end local v0    # "appIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;->val$nebulaAppReady:Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    if-eqz v0, :cond_2

    .line 127
    invoke-interface {v0, p1, p2}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;->onResult(ZZ)V

    .line 129
    :cond_2
    return-void
.end method
