.class Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$1;
.super Ljava/lang/Object;
.source "TransportConfigureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$1;->this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 340
    const-string v0, "Conf_TransportConfigureManager"

    const-string v1, "config change,generate new clientABTagValues"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$1;->this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->generateClientABTagValues()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->access$102(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    return-void
.end method
