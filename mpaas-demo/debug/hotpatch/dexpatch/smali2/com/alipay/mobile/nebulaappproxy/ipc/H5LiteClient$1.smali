.class Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;
.super Ljava/lang/Object;
.source "H5LiteClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;->onClientDestory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/service/H5Service;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;Lcom/alipay/mobile/h5container/service/H5Service;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->a:Lcom/alipay/mobile/h5container/service/H5Service;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->a:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->b:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 77
    return-void
.end method
