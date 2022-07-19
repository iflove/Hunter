.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;
.super Ljava/lang/Object;
.source "TinyAppLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->startAppLimitControl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "limitUriList"

    const-string v1, "limitAllUri"

    .line 81
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->isLimitControlOpened(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    # getter for: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAppLimitControl..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 90
    .local v4, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eqz v2, :cond_1

    .line 92
    # getter for: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startAppLimitControl...from keep alive"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    const/4 v6, 0x1

    # invokes: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->doLimitControlRpc(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    invoke-static {v2, v5, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$300(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;

    move-result-object v2

    move-object v5, v3

    .line 97
    .local v5, "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    move-object v5, v2

    if-nez v2, :cond_2

    .line 98
    # getter for: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startAppLimitControl...resultPB is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_2
    iget-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    move-object v6, v3

    .line 103
    .local v6, "objectMapPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    move-object v6, v2

    if-eqz v2, :cond_6

    .line 104
    iget-object v2, v6, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    .line 105
    .local v3, "entries":Ljava/util/List;
    move-object v3, v2

    if-eqz v2, :cond_6

    .line 106
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    .local v2, "limitConfig":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    .line 108
    .local v8, "objectPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    iget-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    iget-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v2, v1, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_3
    iget-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    iget-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    invoke-static {v9}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 112
    .local v9, "uriArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v2, v0, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v8    # "objectPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .end local v9    # "uriArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;->a:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->writeToDiskFile(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$400(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "limitConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "entries":Ljava/util/List;
    .end local v4    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v5    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    .end local v6    # "objectMapPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    :cond_6
    return-void

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAppLimitControl...e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
