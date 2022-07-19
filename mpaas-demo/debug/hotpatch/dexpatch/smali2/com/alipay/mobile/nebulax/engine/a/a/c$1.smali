.class Lcom/alipay/mobile/nebulax/engine/a/a/c$1;
.super Ljava/lang/Object;
.source "WebViewNXBridge.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/a/c;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/a/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/a/c;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/a/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c$1;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;-><init>()V

    .line 134
    iput-object p1, v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 135
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c$1;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;->onCallBack(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;)V

    .line 138
    :cond_0
    return-void
.end method
