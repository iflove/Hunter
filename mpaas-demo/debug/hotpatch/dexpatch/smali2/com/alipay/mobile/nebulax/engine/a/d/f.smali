.class public Lcom/alipay/mobile/nebulax/engine/a/d/f;
.super Lcom/alipay/mobile/nebulax/engine/common/c/b;
.source "WebBackPerform.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/b;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 15
    const-string p2, "NebulaXEngine.WebBackPerform"

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->g:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->h:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 22
    return-void
.end method


# virtual methods
.method public b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform back behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->e:I

    sget v1, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 29
    if-eqz p1, :cond_6

    .line 30
    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;->afterProcess(Z)V

    goto :goto_1

    .line 33
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->e:I

    sget v1, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    if-ne v0, v1, :cond_6

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->h:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->h:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 45
    if-gtz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->g:Ljava/lang/String;

    const-string v1, "webview with no history and do exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;->afterProcess(Z)V

    .line 51
    :cond_2
    return-void

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->h:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBack()V

    .line 54
    if-eqz p1, :cond_6

    .line 55
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;->afterProcess(Z)V

    goto :goto_1

    .line 35
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/f;->g:Ljava/lang/String;

    const-string v1, "webview can\'t go back and do exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_5

    .line 37
    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;->afterProcess(Z)V

    .line 40
    :cond_5
    return-void

    .line 58
    :cond_6
    :goto_1
    return-void
.end method
