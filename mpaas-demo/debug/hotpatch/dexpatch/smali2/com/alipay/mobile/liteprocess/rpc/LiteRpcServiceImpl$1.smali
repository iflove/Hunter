.class Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl$1;
.super Ljava/lang/Object;
.source "LiteRpcServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->setScene(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl$1;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl$1;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;

    iget-object v0, v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setScene(Ljava/lang/String;)V

    .line 120
    return-void
.end method
