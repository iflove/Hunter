.class Lcom/alipay/mobile/nebulax/engine/a/d/c$1;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Lcom/alipay/mobile/nebulax/engine/a/d/c;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Lcom/alipay/mobile/nebulax/engine/a/d/c;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 245
    return-void
.end method
