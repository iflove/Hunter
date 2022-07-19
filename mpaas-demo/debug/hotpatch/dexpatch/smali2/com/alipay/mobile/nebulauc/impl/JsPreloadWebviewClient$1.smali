.class Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;
.super Ljava/lang/Object;
.source "JsPreloadWebviewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    const-string v0, "JsPreloadWebviewClient"

    :try_start_0
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 88
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->onLiteProcessPreloadComplete()V

    .line 91
    :cond_0
    const-string v2, "appx preload completed"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "call LiteProcessClientManager.onLiteProcessPreloadComplete() error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
