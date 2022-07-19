.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;
.super Ljava/lang/Object;
.source "H5PushBizUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getH5BridgeContext()Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1

    .line 18
    sget-object v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method

.method public static setH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 14
    sput-object p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 15
    return-void
.end method
