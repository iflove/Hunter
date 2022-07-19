.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;
.super Ljava/lang/Object;
.source "TinyAppRequestPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;

    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->f:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->f:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    return-void

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "TinyAppRequestPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/16 v1, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->a(ILjava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->f:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 159
    goto :goto_0

    .line 162
    :cond_0
    return-void

    .line 157
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->f:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->f:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    throw v0
.end method
