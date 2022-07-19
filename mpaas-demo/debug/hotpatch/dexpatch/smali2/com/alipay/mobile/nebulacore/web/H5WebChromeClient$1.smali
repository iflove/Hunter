.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 219
    return-void
.end method
