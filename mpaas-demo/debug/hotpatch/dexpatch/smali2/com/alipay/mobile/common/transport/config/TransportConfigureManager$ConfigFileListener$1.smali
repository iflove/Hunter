.class Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;
.super Ljava/lang/Object;
.source "TransportConfigureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;->this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;->this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    sget-byte v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_IDLE:B

    # setter for: Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->access$002(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;B)B

    .line 324
    return-void

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "Conf_TransportConfigureManager"

    const-string v2, "ConfigFileListener. updateConfig exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 323
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;->this$0:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    sget-byte v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_IDLE:B

    # setter for: Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->access$002(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;B)B

    throw v0
.end method
