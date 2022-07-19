.class Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;
.super Ljava/lang/Object;
.source "H5UCPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;

    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;->this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    :try_start_0
    const-string v0, "FLUSH_HTTP_LOG"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5UCPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
