.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;
.super Ljava/lang/Object;
.source "H5PkgResPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5PkgResPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 50
    return-void
.end method
