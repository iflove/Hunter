.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;
.super Lcom/uc/webview/export/extension/UCClient;
.source "UCWebView.java"


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

    .line 932
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    return-void
.end method

.method private getWebARPermission(Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1182
    invoke-static {}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->getInstance()Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$5;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$5;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 1196
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1182
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->showGeneralPermissionsPrompt(Landroid/content/Context;Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;Ljava/lang/String;)V

    .line 1197
    return-void
.end method


# virtual methods
.method public checkIsTinyApp()Z
    .locals 7

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "rs":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 1160
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_1

    .line 1161
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 1162
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v2, :cond_1

    .line 1163
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "parentAppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "parentAppId":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/WebView;

    .line 1167
    .local v5, "ucWebView":Lcom/uc/webview/export/WebView;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v6, :cond_0

    .line 1168
    return v4

    .line 1172
    .end local v5    # "ucWebView":Lcom/uc/webview/export/WebView;
    :cond_0
    nop

    .line 1173
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1174
    const/4 v0, 0x1

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v5

    .line 1171
    .local v5, "e":Ljava/lang/Exception;
    return v4

    .line 1178
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "parentAppId":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method public getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
    .locals 9
    .param p1, "embedViewConfig"    # Lcom/uc/webview/export/extension/EmbedViewConfig;
    .param p2, "iEmbedViewContainer"    # Lcom/uc/webview/export/extension/IEmbedViewContainer;

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmbedView viewid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsCurrentPage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mIsCurrentPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-boolean v0, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mIsCurrentPage:Z

    if-nez v0, :cond_0

    .line 1015
    const-string v0, "UCWebView onEmbedView !embedViewConfig.mIsCurrentPage return super"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnStateChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;)V

    .line 1065
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnParamChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;)V

    .line 1082
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnVisibilityChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;)V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCWebView onEmbedView getEmbedView "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "embedView":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1108
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v3

    iget v4, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget v5, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget v2, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 1110
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v8, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 1109
    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 1115
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;-><init>(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebViewListener;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1116
    .end local v0    # "embedView":Landroid/view/View;
    :catchall_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "UCWebView onEmbedView getEmbedView catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1119
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckSelfPermission(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1130
    const-string v0, "android.permission.CAMERA"

    .line 1131
    .local v0, "cameraPermission":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->getInstance()Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->onCheckSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1132
    .local v1, "grant":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckSelfPermission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " grant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5UCWebView"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1134
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1135
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    .line 1136
    .local v2, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    const v4, 0x1312dc4

    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;

    invoke-direct {v5, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Landroid/webkit/ValueCallback;)V

    .line 1137
    invoke-interface {v3, v2, v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 1149
    .end local v2    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 1150
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1153
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1155
    :goto_0
    return-void
.end method

.method public onCheckSelfPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1125
    invoke-static {}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->getInstance()Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->onCheckSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFirstVisuallyNonEmptyDraw()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 978
    return-void
.end method

.method public onGeneralPermissionsShowPrompt(Ljava/util/Map;Landroid/webkit/ValueCallback;)V
    .locals 9
    .param p1, "params"    # Ljava/util/Map;
    .param p2, "callback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1201
    const-string v0, "no"

    const-string v1, "allow"

    const-string v2, "H5UCWebView"

    if-nez p1, :cond_1

    .line 1202
    if-eqz p2, :cond_0

    .line 1203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1204
    .local v2, "results":Ljava/util/Map;
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1206
    .end local v2    # "results":Ljava/util/Map;
    goto :goto_0

    .line 1207
    :cond_0
    const-string v0, "params is null and callback is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :goto_0
    return-void

    .line 1211
    :cond_1
    const-string v3, "type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1212
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_7

    const-string v4, "camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1213
    if-eqz p2, :cond_6

    .line 1214
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->checkIsTinyApp()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1216
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 1217
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const/4 v4, 0x0

    .line 1218
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v2, :cond_2

    .line 1219
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    .line 1221
    :cond_2
    const-class v5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1222
    .local v5, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, ""

    .line 1223
    .local v6, "pageUrl":Ljava/lang/String;
    :goto_1
    const-string v7, "initWebAR"

    invoke-interface {v5, v7, v6, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasWebARPermission(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v7

    .line 1224
    .local v7, "result":Z
    if-eqz v7, :cond_4

    .line 1225
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Landroid/webkit/ValueCallback;)V

    invoke-interface {v5, v6, v4, v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasWebARCameraPermission(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;)V

    goto :goto_2

    .line 1241
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1242
    .local v8, "results":Ljava/util/Map;
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    invoke-interface {p2, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1245
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v6    # "pageUrl":Ljava/lang/String;
    .end local v7    # "result":Z
    .end local v8    # "results":Ljava/util/Map;
    :goto_2
    goto :goto_3

    .line 1246
    :cond_5
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->getWebARPermission(Landroid/webkit/ValueCallback;)V

    goto :goto_3

    .line 1249
    :cond_6
    const-string v0, "onGeneralPermissionsShowPrompt fail!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1252
    :cond_7
    const-string v0, "not camera request, do none"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_3
    return-void
.end method

.method public onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 2
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    .line 953
    return-void
.end method

.method public onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 982
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 983
    return-void
.end method

.method public onSaveFormDataPrompt(ILandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "promptType"    # I
    .param p2, "saveFormDataCallBack"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1007
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1008
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 3
    .param p1, "webview"    # Lcom/uc/webview/export/WebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    .line 958
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    const/16 v0, 0x6b

    const/4 v1, 0x0

    const-string v2, "H5UCWebView"

    if-ne v0, p2, :cond_0

    .line 960
    const-string v0, "renderProcessReady from dynamic webview"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->renderProcessReady(Lcom/uc/webview/export/WebView;Z)V
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$600(Lcom/uc/webview/export/WebView;Z)V

    .line 963
    :cond_0
    const/16 v0, 0x6d

    if-ne v0, p2, :cond_1

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasDestroyNonIsolateStaticWebView:Z
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    const-string v0, "create isolate static webview"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateForMultiProcess(I)V

    .line 966
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportCreateIsolateStaticView()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1400()V

    .line 968
    :cond_1
    const/16 v0, 0x6c

    if-ne v0, p2, :cond_2

    .line 969
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportReleaseNonIsolateStaticView()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$700()V

    .line 970
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->releasePreCreateWebViewForMultiProcess()V

    .line 973
    :cond_2
    return-void
.end method

.method public onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 2
    .param p1, "hashMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    .line 1000
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public showMediaPlayerMobileNetworkWarning(Landroid/webkit/ValueCallback;)Z
    .locals 3
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 937
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;

    .line 938
    .local v0, "mpucClientProvider":Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;
    if-eqz v0, :cond_0

    .line 939
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 940
    .local v1, "params":[Ljava/lang/Object;
    const-string v2, "showMediaPlayerMobileNetworkWarning"

    invoke-interface {v0, p0, v2, v1}, Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;->shouldIntercept(Lcom/uc/webview/export/extension/UCClient;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;->showMediaPlayerMobileNetworkWarning(Lcom/uc/webview/export/extension/UCClient;Landroid/webkit/ValueCallback;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 946
    .end local v0    # "mpucClientProvider":Lcom/alipay/mobile/nebulauc/provider/MPUCClientProvider;
    .end local v1    # "params":[Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5UCWebView"

    const-string v2, "showMediaPlayerMobileNetworkWarning error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 947
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/extension/UCClient;->showMediaPlayerMobileNetworkWarning(Landroid/webkit/ValueCallback;)Z

    move-result v0

    return v0
.end method
