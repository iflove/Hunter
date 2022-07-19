.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$9;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 1511
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$9;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$9;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V

    .line 1515
    return-void
.end method
