.class public Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;
.super Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;


# static fields
.field private static final HIDE_ALL_KEYBOARD:Ljava/lang/String; = "hideAllKeyboard"

.field private static final HIDE_KEYBOARD:Ljava/lang/String; = "hideKeyboard"

.field private static final SET_INPUT_TEXT_CHANGED:Ljava/lang/String; = "setInputTextChanged"

.field private static final SET_TYPE:Ljava/lang/String; = "setKeyboardType"

.field private static final TAG:Ljava/lang/String; = "H5NumInputKeyboardM57"


# instance fields
.field private ifUseRandomNumber:Z

.field private lastDisplayKeyboardTime:J

.field private final mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mContext:Landroid/content/Context;

.field private mEnableInPageInputIntercept:Z

.field private mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

.field private mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

.field private mKeyboardCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Lcom/uc/webview/export/WebView;

.field private mWebViewKeyBoardType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "ap"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mEnableInPageInputIntercept:Z

    .line 58
    new-instance v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 92
    nop

    .line 93
    const-string v1, "h5_enableInPageInputIntercept"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mEnableInPageInputIntercept:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getKeyboardScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method private displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z
    .locals 12
    .param p1, "inputType"    # I
    .param p2, "valueCallback"    # Landroid/webkit/ValueCallback;
    .param p3, "customKeyboardEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayKeyboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customKeyboardEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NumInputKeyboardM57"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "fastDisplayKeyboard":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, "nowTime":J
    iget-wide v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->lastDisplayKeyboardTime:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 275
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    .line 277
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->isNumberInputType(I)Z

    move-result v4

    .line 278
    .local v4, "isNumberInputType":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 280
    .local v7, "hasCustomInputType":Z
    :goto_0
    if-nez v4, :cond_2

    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 281
    .local v8, "useSystem":Z
    :goto_1
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 282
    .local v9, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v9, :cond_4

    const-string v10, "mp_h5_uc_number_input_use_system"

    invoke-interface {v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "YES"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 283
    if-nez v7, :cond_3

    const/4 v5, 0x1

    :cond_3
    move v8, v5

    .line 285
    :cond_4
    if-eqz v8, :cond_6

    .line 286
    const-string v5, "show system keyboard"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 290
    :cond_5
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mEnableInPageInputIntercept:Z

    if-eqz v5, :cond_6

    .line 291
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->isInPageRenderInputShowing()Z

    move-result v1

    return v1

    .line 296
    :cond_6
    if-eqz v0, :cond_7

    .line 297
    const-string v5, "fast display keyboard return true"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return v6

    .line 301
    :cond_7
    iput-wide v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->lastDisplayKeyboardTime:J

    .line 303
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 305
    const/4 v5, 0x0

    if-eqz v7, :cond_8

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setKeyboardType: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v6

    iget-object v10, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-interface {v6, v10}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayKeyboard ifUseRandomNumber: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-interface {v1, v6}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setIfUseRandomNumber(Z)V

    .line 310
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sNeedClearType:Z

    if-eqz v1, :cond_9

    .line 311
    iput-object v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    goto :goto_2

    .line 314
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    .line 316
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboard()Z

    move-result v1

    return v1
.end method

.method private getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    const-string v1, "H5NumInputKeyboardM57"

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "h5InputBoardProvider != null return instance"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    return-object v0

    .line 370
    :cond_0
    const-string v0, "h5InputBoardProvider not set lazy init"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 374
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 377
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-nez v2, :cond_2

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mFallbackClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v2

    .line 383
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "new fallback keyboard exception"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v1, :cond_3

    .line 388
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V

    .line 392
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    return-object v1
.end method

.method private getKeyboardHeight()I
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    const/high16 v1, 0x435c0000    # 220.0f

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 400
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private getKeyboardScreenRect()Landroid/graphics/Rect;
    .locals 5

    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 408
    .local v0, "location":[I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 409
    .local v1, "localRc":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 410
    .local v2, "frameRc":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 412
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 413
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 415
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const/16 v3, 0x438

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 417
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getKeyboardHeight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 419
    :cond_1
    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 421
    :goto_0
    return-object v1
.end method

.method private hideAllKeyboard()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 341
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 342
    return-void
.end method

.method private hideCustomKeyboard()Z
    .locals 8

    .line 447
    const-string v0, " "

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 448
    const-string v1, "H5NumInputKeyboardM57"

    const-string v2, "hideCustomKeyboard"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 450
    const-string v0, "!getH5InputBoardProvider().isKeyboardShown()"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return v4

    .line 454
    :cond_0
    :try_start_0
    const-string v3, "getH5InputBoardProvider().hideKeyboard()"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v3

    .line 458
    .local v3, "exception":Ljava/lang/Exception;
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v3    # "exception":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_1

    .line 462
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 463
    .local v3, "params":Lorg/json/JSONObject;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .local v5, "scrRc":Landroid/graphics/Rect;
    const-string v6, "keyboard-screen-rect-left"

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 465
    const-string v6, "keyboard-screen-rect-top"

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 466
    const-string v6, "keyboard-screen-rect-right"

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 467
    const-string v6, "keyboard-screen-rect-bottom"

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string v6, "CustomKeyBoard"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rect ltrb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CustomKeyBoard: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    .end local v3    # "params":Lorg/json/JSONObject;
    .end local v5    # "scrRc":Landroid/graphics/Rect;
    goto :goto_1

    .line 472
    :catch_1
    move-exception v0

    .line 473
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private hideSoftInputFromWindow()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 440
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->hideInPageRenderInput()V

    .line 444
    return-void
.end method

.method private isEnableResetCustomKeyboard()Z
    .locals 4

    .line 163
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 164
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 165
    const-string v2, "h5_enableCustomKeyboardReset"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 167
    :cond_0
    return v1
.end method

.method private isNumberInputType(I)Z
    .locals 1
    .param p1, "inputType"    # I

    .line 259
    and-int/lit16 v0, p1, 0x3002

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendBlurToFocusElement()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 219
    const-string v1, "javascript:document.activeElement && document.activeElement.blur()"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method private setInputTextChanged(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 201
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "textEmpty"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, "isEmpty":Z
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    .line 203
    .local v1, "inputBoardProvider":Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    if-nez v1, :cond_1

    .line 204
    const-string v2, "H5NumInputKeyboardM57"

    const-string v3, "setInputTextChanged..inputBoardProvider is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz p2, :cond_0

    .line 206
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 208
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setTextChanged(Z)V

    .line 212
    if-eqz p2, :cond_2

    .line 213
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 215
    :cond_2
    return-void
.end method

.method private showCustomKeyboard()Z
    .locals 3

    .line 345
    const-string v0, "H5NumInputKeyboardM57"

    const-string v1, "showCustomKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->showKeyboard()V

    .line 348
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->toggleSoftInput()V

    .line 350
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V

    .line 351
    return v1

    .line 353
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    return v2

    .line 356
    :catch_0
    move-exception v2

    .line 358
    .local v2, "exception":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->toggleSoftInput()V

    .line 360
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V

    .line 362
    .end local v2    # "exception":Ljava/lang/Exception;
    return v1
.end method

.method private showCustomKeyboardCallback(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCustomKeyboardCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NumInputKeyboardM57"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 505
    :cond_0
    return-void
.end method

.method private toggleSoftInput()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    const-string v0, "H5NumInputKeyboardM57"

    const-string v1, "toggleSoftInput"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 432
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 435
    :cond_1
    return-void
.end method


# virtual methods
.method public displaySoftKeyboard(Ljava/lang/String;ILandroid/webkit/ValueCallback;)Z
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "inputType"    # I
    .param p3, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NumInputKeyboardM57"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->needShowDisclaimerPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    .line 244
    .local v0, "warningTipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 245
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, ""

    invoke-interface {v0, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->showWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)V

    .line 249
    .end local v0    # "warningTipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->displaySoftKeyboard(Ljava/lang/String;I)Z

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->isCustomKeyboardEnabled()Z

    move-result v0

    .line 253
    .local v0, "customKeyboardEnabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomKeyboardEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p2, p3, v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z

    move-result v1

    return v1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 124
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v1, "hideKeyboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "H5NumInputKeyboardM57"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 127
    const-string v1, "hide keyboard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v3

    .line 129
    :cond_0
    const-string v1, "hideAllKeyboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    .line 131
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    .line 132
    const-string v1, "hide all keyboard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return v3

    .line 134
    :cond_1
    const-string v1, "setKeyboardType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v4, "type"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v4, "randomnumber"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Y"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set keyboard type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " randomnumber "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->isEnableResetCustomKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    const-string v4, "digit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 139
    const-string v4, "idcard"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 140
    const-string v4, "number"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    :cond_2
    const-string v1, "setKeyboardType reset keyboard for custom type"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setIfUseRandomNumber(Z)V

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboard()Z

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 150
    :cond_4
    return v3

    .line 151
    :cond_5
    const-string v1, "hideCustomInputMethod4NativeInput"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    .line 153
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 154
    return v3

    .line 155
    :cond_6
    const-string v1, "setInputTextChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->setInputTextChanged(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 157
    return v3

    .line 159
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public hideSoftKeyboard()Z
    .locals 2

    .line 326
    const-string v0, "H5NumInputKeyboardM57"

    const-string v1, "hideSoftKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 173
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    const-string v2, "h5PagePhysicalBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "H5NumInputKeyboardM57"

    if-eqz v2, :cond_2

    .line 178
    const-string v1, "H5_PAGE_PHYSICAL_BACK hide keyboard"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onBackPressed()V

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    .line 183
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 184
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    move-result v1

    return v1

    .line 185
    :cond_2
    const-string v2, "pushWindow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const-string v2, "PUSH_WINDOW hide keyboard"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onPushWindow()V

    .line 190
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    .line 191
    return v1

    .line 192
    :cond_4
    const-string v2, "h5PagePause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 193
    const-string v2, "H5_PAGE_PAUSE hide keyboard"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    .line 195
    return v1

    .line 197
    :cond_5
    return v1
.end method

.method public onFinishComposingText()Z
    .locals 1

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 99
    const-string v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "pushWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "hideKeyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "hideAllKeyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v0, "setKeyboardType"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "hideCustomInputMethod4NativeInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v0, "setInputTextChanged"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->onRelease()V

    .line 112
    const-string v0, "H5NumInputKeyboardM57"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 114
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->onRelease()V

    .line 118
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 120
    :cond_0
    return-void
.end method
