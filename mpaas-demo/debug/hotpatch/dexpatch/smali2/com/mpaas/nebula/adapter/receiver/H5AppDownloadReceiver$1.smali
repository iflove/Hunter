.class Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver$1;
.super Ljava/lang/Object;
.source "H5AppDownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;

    .line 32
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver$1;->this$0:Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;

    iput-object p2, p0, Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 36
    const-string v0, "H5AppDownloadReceiver"

    :try_start_0
    iget-object v1, p0, Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "app_id":Ljava/lang/String;
    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "version":Ljava/lang/String;
    invoke-static {}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->getInstance()Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->getH5AppProvider()Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-result-object v4

    .line 40
    .local v4, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-interface {v4, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "app_id":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Throwable"

    invoke-static {v1}, Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v3, 0x1

    const-string v4, "mpaas"

    const-string v5, "H5Download"

    const-string v6, "onReceive"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lcom/mpaas/nebula/adapter/receiver/H5AppDownloadReceiver;->event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v2

    .line 49
    .local v2, "hh":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "hh":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
