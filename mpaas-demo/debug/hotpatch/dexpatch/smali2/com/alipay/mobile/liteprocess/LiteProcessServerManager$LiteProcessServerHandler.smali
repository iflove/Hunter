.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;
.super Landroid/os/Handler;
.source "LiteProcessServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiteProcessServerHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/os/Bundle;)V

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V

    .line 192
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(I)V

    .line 188
    return-void

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V

    .line 184
    return-void

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V

    .line 180
    return-void
.end method
