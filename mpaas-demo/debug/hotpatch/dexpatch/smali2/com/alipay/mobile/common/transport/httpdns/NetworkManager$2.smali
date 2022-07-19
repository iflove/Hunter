.class Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    # invokes: Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->access$200(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;Z)V

    .line 131
    return-void
.end method
