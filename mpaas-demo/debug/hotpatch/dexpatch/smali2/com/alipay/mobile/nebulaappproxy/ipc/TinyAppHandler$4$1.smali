.class Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4$1;
.super Ljava/lang/Object;
.source "TinyAppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;

    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;->a:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4$1;->a:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 299
    return-void
.end method
