.class public Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "H5BridgeContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# static fields
.field public static final FORBIDDEN:Ljava/lang/String; = "forbidden!"

.field public static final INVALID_PARAM:Ljava/lang/String; = "invalid parameter!"

.field public static final NONE_ERROR:Ljava/lang/String; = "none error!"

.field public static final NOT_FOUND:Ljava/lang/String; = "not implemented!"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown error!"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 33
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    .line 43
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 44
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "H5BridgeContextImpl"

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    const-string v4, "native_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ignore native fired event "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    const-string v4, "callback"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 56
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v4, :cond_2

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 62
    const/4 v2, 0x1

    return v2

    .line 59
    :cond_2
    const-string v4, "[FATAL ERROR] in sendBack() bridge is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return v2

    .line 45
    .end local v1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "client id not specified "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v2
.end method
