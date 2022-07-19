.class Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl$1;
.super Ljava/lang/Object;
.source "MpaasRpcServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;->setScene(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setScene(Ljava/lang/String;)V

    .line 114
    return-void
.end method
