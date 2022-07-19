.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/NXView;
.super Ljava/lang/Object;
.source "NXView.java"


# static fields
.field public static final CAPTURE_RANGE_DOCUMENT:I = 0x1

.field public static final CAPTURE_RANGE_VIEWPORT:I


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract forceLoad(Ljava/lang/String;)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getCapture(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getH5WebViewAdapter()Ljava/lang/Object;
.end method

.method public abstract getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;
.end method

.method public abstract getLegacyH5WebView()Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
.end method

.method public abstract getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract getPageId()I
.end method

.method public abstract getProxy()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
.end method

.method public abstract getScrollY()I
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getViewId()Ljava/lang/String;
.end method

.method public abstract goBack(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
.end method

.method public abstract init()V
.end method

.method public abstract isH5View()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isShouldResumeWebView()Z
.end method

.method public abstract load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract runExit(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
.end method

.method public abstract setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
.end method

.method public abstract setShouldResumeWebView(Z)V
.end method

.method public abstract showErrorView(Landroid/view/View;)V
.end method
