.class public Lcom/alipay/mobile/nebulauc/webar/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IARDetector;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetector"


# instance fields
.field mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/alipay/mobile/webar/FaceDetectorImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/webar/FaceDetectorImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 100
    const-string v0, "FaceDetector"

    const-string v1, "getVersion"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "1"

    return-object v0
.end method

.method public init(IIIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I
    .param p4, "format"    # I
    .param p5, "mId"    # I

    .line 36
    const-string v0, "FaceDetector"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v2, :cond_0

    .line 38
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->init(IIIII)V

    .line 40
    :cond_0
    return-void
.end method

.method public isDetector()Z
    .locals 2

    .line 94
    const-string v0, "FaceDetector"

    const-string v1, "isDetector"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .line 54
    const-string v0, "FaceDetector"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->pause()V

    .line 58
    :cond_0
    return-void
.end method

.method public removeMarkers()V
    .locals 2

    .line 78
    const-string v0, "FaceDetector"

    const-string v1, "removeMarkers"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->removeMarkers()V

    .line 82
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 62
    const-string v0, "FaceDetector"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->resume()V

    .line 66
    :cond_0
    return-void
.end method

.method public setARSessionFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
    .locals 2
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 15
    const-string v0, "FaceDetector"

    const-string v1, "setARSessionFrame"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->setARSessionFrame(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method

.method public setARSessionFrameFilter(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)Ljava/lang/String;
    .locals 1
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMarkers([Ljava/lang/String;)V
    .locals 2
    .param p1, "markers"    # [Ljava/lang/String;

    .line 70
    const-string v0, "FaceDetector"

    const-string v1, "setMarkers"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->setMarkers([Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "option"    # Ljava/lang/String;

    .line 86
    const-string v0, "FaceDetector"

    const-string v1, "setOption"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->setOption(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setResultListener(Lcom/uc/webview/export/extension/IARDetector$ResultListener;)V
    .locals 2
    .param p1, "resultListener"    # Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    .line 28
    const-string v0, "FaceDetector"

    const-string v1, "setResultListener"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->setResultListener(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 45
    const-string v0, "FaceDetector"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/webar/FaceDetectorImpl;->stop()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;->mFaceDetectorImpl:Lcom/alipay/mobile/webar/FaceDetectorImpl;

    .line 50
    :cond_0
    return-void
.end method
