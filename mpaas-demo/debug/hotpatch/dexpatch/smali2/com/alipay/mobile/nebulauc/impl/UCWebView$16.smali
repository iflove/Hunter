.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$16;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1582
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$800()V

    .line 1583
    return-void
.end method
