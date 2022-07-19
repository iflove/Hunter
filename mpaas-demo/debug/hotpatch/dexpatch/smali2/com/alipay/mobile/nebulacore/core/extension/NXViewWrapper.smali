.class public Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;
.super Ljava/lang/Object;
.source "NXViewWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/NXView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/h5container/api/H5CoreNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "h5CoreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method

.method public forceLoad(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 243
    return-object v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-object v2, v1

    .line 246
    .local v2, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_1

    .line 247
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 248
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    return-object v1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return-object v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-object v2, v1

    .line 54
    .local v2, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v3, "appId"

    if-eqz v0, :cond_1

    .line 55
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 56
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    instance-of v0, v2, Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_2

    .line 58
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 59
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2
    return-object v1
.end method

.method public getCapture(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "i"    # I

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5WebViewAdapter()Ljava/lang/Object;
    .locals 1

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;
    .locals 1

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLegacyH5WebView()Ljava/lang/Object;
    .locals 1

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageId()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    const/4 v2, 0x0

    move-object v3, v2

    .line 146
    .local v3, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v3, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 147
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v1, v2

    .line 148
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v0

    return v0

    .line 149
    .end local v1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    instance-of v0, v3, Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_2

    .line 150
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 151
    .local v2, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v0

    return v0

    .line 155
    .end local v2    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    return v1
.end method

.method public getProxy()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 1

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollY()I
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return-object v1

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-object v2, v1

    .line 214
    .local v2, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 215
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 216
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    instance-of v0, v2, Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_2

    .line 218
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 219
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 221
    :cond_2
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return-object v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-object v2, v1

    .line 103
    .local v2, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    .line 104
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v3, v1

    .line 105
    .local v3, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 105
    .end local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    instance-of v0, v2, Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_3

    .line 109
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v3, v1

    .line 110
    .restart local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 111
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 108
    .end local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    :goto_0
    nop

    .line 114
    :cond_4
    return-object v1
.end method

.method public getViewId()Ljava/lang/String;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "-1"

    if-nez v0, :cond_0

    .line 125
    return-object v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    const/4 v2, 0x0

    move-object v3, v2

    .line 128
    .local v3, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v3, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 129
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v1, v2

    .line 130
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    .end local v1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    instance-of v0, v3, Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_2

    .line 132
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 133
    .local v2, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    .end local v2    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    return-object v1
.end method

.method public goBack(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 0
    .param p1, "goBackCallback"    # Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

    .line 67
    return-void
.end method

.method public init()V
    .locals 0

    .line 46
    return-void
.end method

.method public isH5View()Z
    .locals 1

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public isShouldResumeWebView()Z
    .locals 1

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
    .locals 0
    .param p1, "loadParams"    # Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 171
    return-void
.end method

.method public runExit(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 0
    .param p1, "exitCallback"    # Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    .line 72
    return-void
.end method

.method public setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
    .locals 0
    .param p1, "scrollChangedCallback"    # Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    .line 186
    return-void
.end method

.method public setShouldResumeWebView(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 232
    return-void
.end method

.method public showErrorView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 120
    return-void
.end method
