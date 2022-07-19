.class public Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
.super Ljava/lang/Object;
.source "XNNDetector.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IARDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XNNDetector"

.field public static final XNN_DETECTOR_VERSION:Ljava/lang/String; = "0.1.0"


# instance fields
.field private mDetectorMode:I

.field private mIsDownloadingModel:Z

.field private mModelUrl:Ljava/lang/String;

.field private mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

.field private mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field private mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->STOP:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mModelUrl:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mDetectorMode:I

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->initXMediaEngine(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mModelUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;)Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    return-object p1
.end method

.method private convertYV12ToNV21([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 74
    array-length v0, p1

    new-array v0, v0, [B

    .line 75
    .local v0, "mDataFormatConvertArray":[B
    mul-int v1, p2, p3

    .line 76
    .local v1, "yFrameSize":I
    array-length v2, p1

    int-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v6

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move v2, v1

    .local v2, "i":I
    move v3, v1

    .local v3, "j":I
    :goto_0
    div-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    .line 81
    aget-byte v4, v0, v2

    aput-byte v4, p1, v3

    .line 80
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    div-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v1

    .restart local v2    # "i":I
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "j":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 84
    aget-byte v4, v0, v2

    aput-byte v4, p1, v3

    .line 83
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 86
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    return-void
.end method

.method private detectFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
    .locals 5
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->transYV12ToNV21(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    if-eqz v0, :cond_0

    .line 55
    iget v1, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->width:I

    iget v2, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->height:I

    iget-object v3, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->data:[B

    iget v4, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->rotation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ant/phone/xmedia/XMediaEngine;->feedYuvFrame(II[BI)V

    .line 57
    :cond_0
    return-void
.end method

.method private initXMediaEngine(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;
    .locals 10
    .param p1, "modelSavedPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/alibaba/fastjson/JSONObject;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "map":Ljava/util/HashMap;
    const-string v1, "model_path"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "model_path_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/ant/phone/xmedia/XMediaEngine;->getInstance()Lcom/ant/phone/xmedia/XMediaEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0}, Lcom/ant/phone/xmedia/XMediaEngine;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/ant/phone/xmedia/params/XMediaResponse;

    move-result-object v2

    .line 208
    .local v2, "response":Lcom/ant/phone/xmedia/params/XMediaResponse;
    const-string v4, "XNNDetector"

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/ant/phone/xmedia/params/XMediaResponse;->mErrInfo:Lcom/ant/phone/xmedia/params/ErrorInfo;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/ant/phone/xmedia/params/XMediaResponse;->mErrInfo:Lcom/ant/phone/xmedia/params/ErrorInfo;

    iget v5, v5, Lcom/ant/phone/xmedia/params/ErrorInfo;->mCode:I

    if-eqz v5, :cond_1

    .line 209
    const-string v1, "xmedia init failed"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 212
    .local v1, "rsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "type"

    const-string v5, "error"

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "message"

    const-string v5, "xmedia engine init failed"

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "fileUrl"

    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/uc/webview/export/extension/IARDetector$ResultListener;->onResult(Ljava/lang/String;)V

    .line 217
    .end local v1    # "rsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->STOP:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 218
    return-object v3

    .line 220
    :cond_1
    const-string v5, "roi"

    invoke-static {p2, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 221
    .local v6, "roiArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v7, 0x4

    new-array v8, v7, [I

    .line 222
    .local v8, "roiIntArray":[I
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 224
    if-le v3, v7, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->getIntValue(I)I

    move-result v9

    aput v9, v8, v3

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "i":I
    :cond_3
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v3, "optMap":Ljava/util/HashMap;
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v5, "detectorMode"

    invoke-static {p2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 230
    .local v5, "detectorMode":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    const/4 v1, 0x2

    :cond_4
    iput v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mDetectorMode:I

    .line 231
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    new-instance v9, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;-><init>(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)V

    invoke-virtual {v7, v1, v9, v3}, Lcom/ant/phone/xmedia/XMediaEngine;->startRunning(ILcom/ant/phone/xmedia/XMediaEngine$XMediaCallback;Ljava/util/HashMap;)V

    .line 261
    sget-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->INIT:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 262
    const-string v1, "xmedia init success"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    return-object v1

    .line 265
    .end local v3    # "optMap":Ljava/util/HashMap;
    .end local v5    # "detectorMode":I
    :cond_5
    return-object v3
.end method

.method private sendErrorMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send error msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XNNDetector"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 282
    .local v0, "rsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "type"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uc/webview/export/extension/IARDetector$ResultListener;->onResult(Ljava/lang/String;)V

    .line 286
    .end local v0    # "rsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private transYV12ToNV21(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
    .locals 3
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 61
    iget v0, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->data:[B

    iget v1, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->width:I

    iget v2, p1, Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->convertYV12ToNV21([BII)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 275
    const-string v0, "0.1.0"

    return-object v0
.end method

.method public init(IIIII)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I
    .param p5, "i4"    # I

    .line 101
    return-void
.end method

.method public isDetector()Z
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 113
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->PAUSE:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 114
    return-void
.end method

.method public removeMarkers()V
    .locals 0

    .line 129
    return-void
.end method

.method public resume()V
    .locals 1

    .line 118
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->RESUME:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 119
    return-void
.end method

.method public setARSessionFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
    .locals 2
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    sget-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->INIT:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    sget-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->START:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    sget-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->RESUME:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->detectFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V

    .line 50
    :cond_1
    return-void
.end method

.method public setARSessionFrameFilter(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)Ljava/lang/String;
    .locals 1
    .param p1, "arSessionFrame"    # Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMarkers([Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "setOptionFailed: option string is empty"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->sendErrorMsg(Ljava/lang/String;)V

    .line 135
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mModelUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "setOptionFailed: model url has already set"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->sendErrorMsg(Ljava/lang/String;)V

    .line 139
    return-void

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "setOptionFailed: model is downloading"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->sendErrorMsg(Ljava/lang/String;)V

    .line 143
    return-void

    .line 145
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 146
    .local v0, "info":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "modelPath"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "modelUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 149
    .local v2, "cacheDir":Ljava/io/File;
    if-nez v2, :cond_3

    return-void

    .line 150
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/model/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, "modelDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 153
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z

    .line 154
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 156
    .local v5, "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    new-instance v6, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v6, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 157
    .local v6, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 158
    new-instance v7, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;

    invoke-direct {v7, p0, v3, v0, v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;-><init>(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 195
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    .line 196
    .end local v5    # "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    goto :goto_0

    .line 197
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->initXMediaEngine(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;

    .line 199
    :goto_0
    return-void
.end method

.method public setResultListener(Lcom/uc/webview/export/extension/IARDetector$ResultListener;)V
    .locals 0
    .param p1, "resultListener"    # Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    .line 96
    return-void
.end method

.method public stop()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mXMediaEngine:Lcom/ant/phone/xmedia/XMediaEngine;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/ant/phone/xmedia/XMediaEngine;->stopRunning()V

    .line 108
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->STOP:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 109
    return-void
.end method
