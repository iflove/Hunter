.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

.field final synthetic val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 1256
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJS(I)Ljava/lang/String;
    .locals 8
    .param p1, "type"    # I

    .line 1259
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1261
    .local v0, "time":Ljava/lang/Long;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin load AlipayJSBridge type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UCWebView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "UcLoadBridge_IO"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1265
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getJSBridge()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "js":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1800(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1800(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->getInjectJS()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1269
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin load AlipayJSBridge type cost "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1271
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<script type=\"text/javascript\" charset=\"utf-8\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    .end local v3    # "js":Ljava/lang/String;
    .local v1, "js":Ljava/lang/String;
    return-object v1

    .line 1275
    .end local v0    # "time":Ljava/lang/Long;
    .end local v1    # "js":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 1276
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->loadJSScriptTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1278
    :cond_2
    const-string v0, ""

    return-object v0
.end method
