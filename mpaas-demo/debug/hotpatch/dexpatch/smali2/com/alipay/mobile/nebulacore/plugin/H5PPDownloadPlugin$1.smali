.class Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;
.super Ljava/lang/Object;
.source "H5PPDownloadPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->h:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->f:Ljava/lang/String;

    iput-wide p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "detailUrl"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "H5PPDownloadPlugin"

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->startExtActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 96
    :cond_0
    const-string v0, "googleplaychannel query packagename empty"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_1
    const-string v0, "download whitelistapk but googleplay channel return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->h:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->loadUrl(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "apk"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->b:Ljava/lang/String;

    const-string v2, "origin"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "detailUrl"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->h:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string v2, "h5PageJumpPP"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 110
    .end local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->h:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->f:Ljava/lang/String;

    iget-wide v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->g:J

    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    return-void
.end method
