.class public Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
.super Ljava/lang/Object;
.source "AlipayRequest.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;,
        Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;,
        Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;,
        Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;
    }
.end annotation


# static fields
.field private static REQUEST_INDEX:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private alreadyRequest:Z

.field private apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private bizScenario:Ljava/lang/String;

.field private bugmeReqId:I

.field private calculateDataLength:J

.field private capture:Z

.field private checkCrossOrigin:Z

.field private costTime:J

.field private currentMainDocUrl:Ljava/lang/String;

.field private devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

.field private eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

.field private futureResponse:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation
.end field

.field private h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;

.field private handleResponseGetError:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTinyApp:Z

.field private isUcProxy:Z

.field private jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

.field private loadType:I

.field private mFallbackOriginUrl:Ljava/lang/String;

.field private mHandleRequestTime:J

.field private mHighPriorityRequest:Z

.field private mIsFallbackRequest:Z

.field private mLdcUserGroup:Ljava/lang/String;

.field private mNeedPendingResponse:Z

.field private mNetPerformanceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalUrl:Ljava/lang/String;

.field private mRequestDuration:J

.field private mUrlConnectSwitch:Z

.field private method:Ljava/lang/String;

.field private packageNick:Ljava/lang/String;

.field private pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private pageId:I

.field private pageUrl:Ljava/lang/String;

.field private pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

.field private protocol:Ljava/lang/String;

.field private publicId:Ljava/lang/String;

.field private releaseType:Ljava/lang/String;

.field private requestType:I

.field private statusCode:I

.field private final syncLock:Ljava/lang/Object;

.field private ucHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private uploadFileLength:J

.field private uploadFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private useNew478Cookie:Z

.field private useSpdy:Z

.field private viewId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->REQUEST_INDEX:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isUCProxyReq"    # Z
    .param p4, "headers"    # Ljava/util/Map;
    .param p5, "ucHeaders"    # Ljava/util/Map;
    .param p6, "uploadFileMap"    # Ljava/util/Map;
    .param p7, "uploadDataMap"    # Ljava/util/Map;
    .param p8, "uploadFileTotalLen"    # J
    .param p10, "requestType"    # I
    .param p11, "loadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JII)V"
        }
    .end annotation

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->syncLock:Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextRequestId()I

    move-result v3

    iput v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bugmeReqId:I

    .line 143
    const-string v3, ""

    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    .line 144
    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    .line 145
    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->packageNick:Ljava/lang/String;

    .line 146
    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bizScenario:Ljava/lang/String;

    .line 147
    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mLdcUserGroup:Ljava/lang/String;

    .line 153
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useNew478Cookie:Z

    .line 157
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mUrlConnectSwitch:Z

    .line 160
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mIsFallbackRequest:Z

    .line 161
    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mFallbackOriginUrl:Ljava/lang/String;

    .line 163
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z

    .line 165
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z

    .line 166
    const/16 v3, 0xc8

    iput v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    .line 167
    const-string v3, "h1"

    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    .line 1927
    iput-boolean v4, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNeedPendingResponse:Z

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    .line 178
    iput-object v1, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    .line 179
    iput-object v1, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mOriginalUrl:Ljava/lang/String;

    .line 180
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    .line 181
    move/from16 v6, p3

    iput-boolean v6, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isUcProxy:Z

    .line 182
    iput-object v2, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    .line 183
    if-nez v2, :cond_0

    .line 184
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    .line 186
    :cond_0
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->ucHeaders:Ljava/util/Map;

    .line 187
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    .line 188
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    .line 189
    move-wide/from16 v10, p8

    iput-wide v10, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileLength:J

    .line 190
    move/from16 v12, p10

    iput v12, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 191
    move/from16 v13, p11

    iput v13, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->loadType:I

    .line 192
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->capture:Z

    .line 193
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useSpdy:Z

    .line 194
    const-string v14, "h5_androidEncodeHeader"

    invoke-static {v14}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    iput-object v14, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    .line 195
    const-string v14, "h5_useNew478Cookie"

    invoke-static {v14}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NO"

    invoke-static {v15, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v4, v14

    iput-boolean v4, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useNew478Cookie:Z

    .line 196
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->checkCrossOrigin:Z

    .line 197
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 198
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mUrlConnectSwitch:Z

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;)Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p1, "x1"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 102
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponse(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .line 102
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNetPerformanceData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p1, "x1"    # Ljava/util/Map;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNetPerformanceData:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useNew478Cookie:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useSpdy:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNeedPendingResponse:Z

    return v0
.end method

.method private asyncRequest(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V
    .locals 4
    .param p1, "h5HttpUrlRequest"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 942
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle request cost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 946
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 947
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setPerformanceDataCallback(Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;)V

    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->futureResponse:Ljava/util/concurrent/Future;

    .line 949
    return-void
.end method

.method private cancelFuture()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->futureResponse:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 252
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "cancelFuture exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private enableLdcLevel()Z
    .locals 7

    .line 924
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 929
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    return v1

    .line 931
    :cond_1
    const-string v2, "h5_ldcLevelConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 932
    .local v2, "jsonObjLdcLevel":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "enable"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 933
    .local v3, "enable":Z
    if-nez v3, :cond_2

    return v1

    .line 935
    :cond_2
    const/4 v1, 0x0

    const-string v4, "domainList"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 936
    .local v1, "ldcWhiteList":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v4

    .line 937
    .local v4, "isMatch":Z
    const-string v5, "group"

    const-string v6, ""

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mLdcUserGroup:Ljava/lang/String;

    .line 938
    return v4

    .line 925
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "ldcWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "jsonObjLdcLevel":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "enable":Z
    .end local v4    # "isMatch":Z
    :cond_3
    :goto_0
    return v1
.end method

.method private static enableModifyEmbedWebViewParam()Z
    .locals 3

    .line 1917
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1918
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1919
    const-string v1, "h5_enableModifyEmbedWebViewParam"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "value":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1921
    const/4 v2, 0x0

    return v2

    .line 1924
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private file2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 394
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 395
    iget-wide v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    .line 396
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "context":Landroid/content/Context;
    goto :goto_0

    .line 397
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 398
    iget-wide v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_0
    goto :goto_1

    .line 400
    :catchall_0
    move-exception v1

    .line 401
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "file2InputStream exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private getBizLogInfo()Ljava/lang/String;
    .locals 5

    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "currentPageUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 911
    .local v1, "referUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "|"

    if-eqz v2, :cond_1

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->releaseType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 914
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->releaseType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getProtocolFromHeader(Ljava/util/Map;I)Ljava/lang/String;
    .locals 7
    .param p1, "responseHeaders"    # Ljava/util/Map;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1509
    const-string v0, "x-via-mobileproxy"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1510
    .local v0, "spdyHeader":Ljava/util/List;
    const-string v1, "X-Android-Selected-Protocol"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1511
    .local v1, "httpProtocol":Ljava/util/List;
    const-string v2, "x-spdy-proxy"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1513
    .local v2, "spdyProxy":Ljava/util/List;
    const-string v3, "h1"

    .line 1514
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, "1"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1515
    const-string v3, "spdy"

    goto :goto_0

    .line 1516
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1517
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 1518
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1519
    const-string v3, "spdy"

    goto :goto_0

    .line 1520
    :cond_2
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mUrlConnectSwitch:Z

    if-eqz v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    const/16 v4, 0x130

    if-ne p2, v4, :cond_3

    .line 1522
    const-string v3, "h2"

    .line 1524
    :cond_3
    :goto_0
    return-object v3
.end method

.method private getReferWithAppId()Ljava/lang/String;
    .locals 7

    .line 885
    const-string v0, "/"

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 886
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    return-object v0

    .line 889
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 891
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    return-object v0

    .line 894
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 895
    .local v3, "pathIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    return-object v0

    .line 898
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, "authorityWithPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    .end local v4    # "authorityWithPath":Ljava/lang/String;
    .local v0, "authorityWithPath":Ljava/lang/String;
    return-object v0

    .line 901
    .end local v0    # "authorityWithPath":Ljava/lang/String;
    .end local v3    # "pathIndex":I
    :catchall_0
    move-exception v0

    .line 902
    .local v0, "thr":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "getReferWithAppId subString"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    return-object v3
.end method

.method private handle478Header(Z)V
    .locals 6
    .param p1, "add478Header"    # Z

    .line 1754
    const-string v0, "h5_478Config"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1755
    .local v0, "jsonObj478":Lcom/alibaba/fastjson/JSONObject;
    const/4 v1, 0x0

    .line 1756
    .local v1, "enable478":Z
    if-eqz v0, :cond_0

    .line 1757
    const-string v2, "enableConfig"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1759
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable478 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    if-nez v1, :cond_1

    .line 1761
    return-void

    .line 1763
    :cond_1
    const-string v2, "X-Alipay-Client-Session"

    if-nez p1, :cond_2

    .line 1764
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "remove request 478header"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1767
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v3

    .line 1768
    .local v3, "isAlipayDomain":Z
    if-eqz v3, :cond_3

    .line 1769
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v5, "add request 478header"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    const-string v5, "check"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    .end local v3    # "isAlipayDomain":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private handle478StatusCode(I)Z
    .locals 5
    .param p1, "statusCode"    # I

    .line 1674
    const-string v0, "h5_478Config"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1675
    .local v0, "jsonObj478":Lcom/alibaba/fastjson/JSONObject;
    const/4 v1, 0x0

    .line 1676
    .local v1, "enable478":Z
    if-eqz v0, :cond_0

    .line 1677
    const-string v2, "enableConfig"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1679
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable478 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1681
    return v2

    .line 1683
    :cond_1
    const/16 v3, 0x1de

    if-ne p1, v3, :cond_3

    .line 1684
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "receive 478 statuscode"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string v2, "H5_RECEIVED_478"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1686
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5478Provider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5478Provider;

    .line 1687
    .local v2, "h5478Provider":Lcom/alipay/mobile/nebula/provider/H5478Provider;
    if-eqz v2, :cond_2

    .line 1688
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5478Provider;->doLogin(Lcom/alipay/mobile/nebula/callback/H5478Listener;)V

    .line 1747
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 1749
    .end local v2    # "h5478Provider":Lcom/alipay/mobile/nebula/provider/H5478Provider;
    :cond_3
    return v2
.end method

.method private handleCDNSafeguardHeader(Z)V
    .locals 3
    .param p1, "isMainDoc"    # Z

    .line 1781
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->shouldEnableCDNSafeGuard(ZLcom/alipay/mobile/h5container/api/H5PageData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1782
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    const-string v1, "X-CDN-Safeguard"

    const-string v2, "afts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const-string v0, "NebulaMD"

    .line 1784
    .local v0, "bizScope":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "X-Biz-Scope"

    if-eqz v1, :cond_0

    .line 1785
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    .end local v0    # "bizScope":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleFallbackRequest()V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    .line 509
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    .line 510
    .local v0, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 511
    .local v2, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getFallbackUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "fallbackUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 513
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFallbackRequest originUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", fallbackUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mIsFallbackRequest:Z

    .line 515
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mFallbackOriginUrl:Ljava/lang/String;

    .line 516
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    .line 519
    .end local v0    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v1    # "fallbackUrl":Ljava/lang/String;
    .end local v2    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    :cond_2
    return-void
.end method

.method private handleResourceContent()Z
    .locals 9

    .line 562
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->enableResHttpCache()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    if-eqz v2, :cond_2

    .line 563
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 565
    .local v2, "urlData":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    const/16 v4, 0xc8

    invoke-interface {v3, v1, v1, v4, v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 567
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v3, "map":Ljava/util/Map;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v4, "list":Ljava/util/List;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max-age="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getCacheTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    const-string v5, "Cache-Control"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v5, "contentLengthList":Ljava/util/List;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v0, "Content-Length"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v0, "typeList":Ljava/util/List;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    const-string v6, "Content-Type"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 581
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "cosUrl":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->checkCrossOrigin:Z

    if-eqz v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 583
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v7, "originValueList":Ljava/util/List;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v8, "Access-Control-Allow-Origin"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .end local v6    # "cosUrl":Ljava/lang/String;
    .end local v7    # "originValueList":Ljava/util/List;
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v6, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 589
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    array-length v7, v2

    invoke-interface {v6, v2, v7}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    .line 590
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v6}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 591
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load response from H5ResContentList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 593
    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAliRequestResNum()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAliRequestResNum(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    return v7

    .line 600
    .end local v0    # "typeList":Ljava/util/List;
    .end local v2    # "urlData":[B
    .end local v3    # "map":Ljava/util/Map;
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "contentLengthList":Ljava/util/List;
    :cond_2
    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method private handleResponse(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V
    .locals 64
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 1116
    move-object/from16 v9, p0

    const-string v1, "content-type"

    const-string v2, "EagleId"

    const-string v3, "Request-Id"

    const-string v4, "x-content-version"

    const-string v5, "X-Biz-Scope"

    const-string v6, "X-CDN-Safeguard"

    const-string v10, "alipayDowngrade scope > 0"

    const-string v11, "alipayDowngrade scope == -1"

    const-string v12, ", downgradeRulesArray[1]"

    const-string v13, "alipayDowngrade downgradeRulesArray[0] "

    const-string v14, "\\|"

    const-string v15, " url= "

    const-string v8, "request duration = "

    const-string v7, "handleResponse close inputStream exception."

    move-object/from16 v16, v5

    const-string v5, "call endData"

    move-object/from16 v17, v6

    const-string v6, "eventHandler.endData() exception : "

    move-object/from16 v18, v2

    const-string v2, "NO"

    const/16 v19, 0x0

    .line 1117
    .local v19, "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v3

    const/4 v3, 0x0

    .line 1118
    .local v3, "downgradeRules":Ljava/lang/String;
    const-class v21, Lcom/alipay/mobile/nebula/callback/H5RequestListener;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alipay/mobile/nebula/callback/H5RequestListener;

    .line 1120
    .local v21, "requestListener":Lcom/alipay/mobile/nebula/callback/H5RequestListener;
    if-eqz v21, :cond_0

    .line 1121
    move-object/from16 v28, v4

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    move-object/from16 v30, v15

    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    move-object/from16 v31, v8

    iget-boolean v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    const/16 v27, 0x0

    move-object/from16 v22, v21

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    move-object/from16 v25, v15

    move/from16 v26, v8

    invoke-interface/range {v22 .. v27}, Lcom/alipay/mobile/nebula/callback/H5RequestListener;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    goto :goto_0

    .line 1120
    :cond_0
    move-object/from16 v29, v1

    move-object/from16 v28, v4

    move-object/from16 v31, v8

    move-object/from16 v30, v15

    .line 1125
    :goto_0
    const/4 v15, 0x1

    .line 1128
    .local v15, "shouldCallEndData":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getCode()I

    move-result v8

    iput v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    .line 1129
    invoke-direct {v9, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handle478StatusCode(I)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3c

    if-eqz v8, :cond_5

    .line 1130
    const/4 v8, 0x0

    .line 1417
    .end local v15    # "shouldCallEndData":Z
    .local v8, "shouldCallEndData":Z
    if-eqz v8, :cond_1

    .line 1418
    :try_start_1
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v15}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v5, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v5, :cond_1

    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v15, :cond_1

    iget v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v15}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1425
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v5, v15, v4}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1428
    .end local v5    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 1429
    .local v4, "ex":Ljava/lang/Throwable;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1430
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 1431
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1437
    goto :goto_3

    .line 1435
    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 1436
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v5, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1439
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v12, v4, v7

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1443
    .local v5, "domainLevel":I
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1444
    .local v6, "scope":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 1445
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_4

    .line 1447
    :cond_2
    if-lez v6, :cond_3

    .line 1448
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v10, v6

    invoke-static {v7, v10, v11, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_3
    :goto_4
    invoke-virtual {v9, v1, v2, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v4    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v5    # "domainLevel":I
    .end local v6    # "scope":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v1, v4

    iput-wide v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1134
    .end local v8    # "shouldCallEndData":Z
    .restart local v15    # "shouldCallEndData":Z
    :cond_5
    move-object/from16 v8, v30

    move-object/from16 v4, v31

    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->interceptSubResponse4Tiny(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)Z

    move-result v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3b

    if-eqz v24, :cond_a

    .line 1135
    :try_start_4
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v25, v15

    .end local v15    # "shouldCallEndData":Z
    .local v25, "shouldCallEndData":Z
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v30, v8

    :try_start_6
    const-string v8, "interceptSubResponse4Tiny url "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v1, "H5_interceptSubResponse4Tiny"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1137
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v8, "appId"

    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v8, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v8, "url"

    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v8, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1139
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    const/16 v8, 0x194

    const-string v15, "can not request subresource that not in package"

    invoke-interface {v1, v8, v15}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1140
    const/4 v1, 0x0

    .line 1417
    .end local v25    # "shouldCallEndData":Z
    .local v1, "shouldCallEndData":Z
    if-eqz v1, :cond_6

    .line 1418
    :try_start_7
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v5, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v5, :cond_6

    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v8, :cond_6

    iget v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1425
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v15, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v5, v8, v15}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    .line 1428
    .end local v5    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 1429
    .local v5, "ex":Ljava/lang/Throwable;
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v8, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1430
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    nop

    .line 1431
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_8
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1437
    goto :goto_7

    .line 1435
    :catchall_3
    move-exception v0

    move-object v5, v0

    .line 1436
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1439
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1440
    .local v5, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v13, v5, v8

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v13, v5, v12

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v6, v5, v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1443
    .local v6, "domainLevel":I
    aget-object v7, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1444
    .local v7, "scope":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 1445
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_8

    .line 1447
    :cond_7
    if-lez v7, :cond_8

    .line 1448
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v10, v7

    invoke-static {v8, v10, v11, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_8
    :goto_8
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v2, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v5    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v6    # "domainLevel":I
    .end local v7    # "scope":I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v5, v7

    iput-wide v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v30

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void

    .line 1393
    .end local v1    # "shouldCallEndData":Z
    .restart local v25    # "shouldCallEndData":Z
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v22, v30

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    :goto_9
    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    :goto_a
    move-object v11, v6

    move-object v6, v13

    :goto_b
    move-object v13, v3

    goto/16 :goto_43

    .end local v25    # "shouldCallEndData":Z
    .restart local v15    # "shouldCallEndData":Z
    :catchall_6
    move-exception v0

    move/from16 v25, v15

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    move-object v11, v6

    move-object v6, v13

    move-object v13, v3

    .end local v15    # "shouldCallEndData":Z
    .restart local v25    # "shouldCallEndData":Z
    goto/16 :goto_43

    .line 1144
    .end local v25    # "shouldCallEndData":Z
    .restart local v15    # "shouldCallEndData":Z
    :cond_a
    move/from16 v25, v15

    .end local v15    # "shouldCallEndData":Z
    .restart local v25    # "shouldCallEndData":Z
    :try_start_9
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3a

    move-object/from16 v26, v3

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .local v26, "downgradeRules":Ljava/lang/String;
    :try_start_a
    const-string v3, "handleResponse status: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toMultimap()Ljava/util/Map;

    move-result-object v1

    move-object v15, v1

    .line 1146
    .local v15, "responseHeaders":Ljava/util/Map;
    iget v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-direct {v9, v15, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->getProtocolFromHeader(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    .line 1148
    iget v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_39

    if-eqz v1, :cond_b

    :try_start_b
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v1, :cond_b

    .line 1149
    iget v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_d

    .line 1393
    .end local v15    # "responseHeaders":Ljava/util/Map;
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    :goto_c
    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    move-object v11, v6

    move-object v6, v13

    goto/16 :goto_41

    .line 1151
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    :cond_b
    :goto_d
    :try_start_c
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sUcRequestSettingEnabled:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_39

    const-string v3, ""

    if-eqz v1, :cond_10

    :try_start_d
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v30, v8

    :try_start_e
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 1153
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_e

    :cond_c
    move-object/from16 v27, v2

    move-object/from16 v31, v4

    const/4 v4, 0x2

    goto :goto_10

    .line 1151
    :cond_d
    move-object/from16 v30, v8

    .line 1153
    :goto_e
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    const-string v8, "h2"

    .line 1154
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "spdy"

    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    move-object/from16 v27, v2

    move-object/from16 v31, v4

    const/4 v4, 0x2

    goto :goto_10

    .line 1155
    :cond_f
    :goto_f
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    iget v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    move-object/from16 v27, v2

    move-object/from16 v31, v4

    const/4 v2, 0x0

    const/4 v4, 0x2

    :try_start_f
    invoke-interface {v1, v4, v2, v8, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_11

    .line 1393
    .end local v15    # "responseHeaders":Ljava/util/Map;
    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v22, v30

    goto :goto_c

    .line 1151
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    :cond_10
    move-object/from16 v27, v2

    move-object/from16 v31, v4

    move-object/from16 v30, v8

    const/4 v4, 0x2

    .line 1157
    :goto_10
    :try_start_10
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    iget v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    const/4 v8, 0x0

    invoke-interface {v1, v8, v8, v2, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 1160
    :goto_11
    const/4 v1, 0x0

    .line 1161
    .local v1, "gzip":Z
    const/4 v2, 0x0

    .line 1162
    .local v2, "chunked":Z
    const/4 v8, 0x0

    .line 1163
    .local v8, "isNeedLogger":Z
    move-object/from16 v32, v3

    .line 1164
    .local v32, "size":Ljava/lang/String;
    nop

    .line 1165
    .local v3, "etag":Ljava/lang/String;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v33

    .line 1166
    .local v34, "contentType":Ljava/util/List;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_38

    move-object/from16 v33, v5

    :try_start_11
    iget-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->costTime:J

    sub-long v4, v35, v4

    iput-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->costTime:J

    .line 1168
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_37

    move v5, v2

    move-object/from16 v2, v32

    move/from16 v32, v8

    move v8, v1

    move-object/from16 v63, v26

    move-object/from16 v26, v3

    move-object/from16 v3, v63

    .end local v1    # "gzip":Z
    .local v2, "size":Ljava/lang/String;
    .local v3, "downgradeRules":Ljava/lang/String;
    .local v5, "chunked":Z
    .local v8, "gzip":Z
    .local v26, "etag":Ljava/lang/String;
    .local v32, "isNeedLogger":Z
    :goto_12
    :try_start_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_36

    if-eqz v1, :cond_1e

    :try_start_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1169
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/List;

    move-object/from16 v36, v35

    .line 1170
    .local v36, "valueList":Ljava/util/List;
    move-object/from16 v35, v4

    const-string v4, "Content-Encoding"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1171
    .local v4, "contentEncoding":Z
    move/from16 v47, v5

    .end local v5    # "chunked":Z
    .local v47, "chunked":Z
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1172
    .local v5, "transferEncoding":Z
    move/from16 v48, v8

    .end local v8    # "gzip":Z
    .local v48, "gzip":Z
    const-string v8, "x-alipay-downgrade"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 1174
    .local v8, "alipayDowngrade":Z
    const/16 v38, 0x0

    .line 1175
    .local v38, "needEncodeValue":Z
    move-object/from16 v49, v10

    :try_start_14
    iget-object v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    if-nez v10, :cond_12

    .line 1176
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13
    move-object/from16 v50, v11

    :try_start_15
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    .line 1177
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v11, v10}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1178
    const/16 v38, 0x1

    .line 1179
    goto :goto_14

    .line 1176
    :cond_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, v50

    goto :goto_13

    .line 1175
    .end local v10    # "i":I
    :cond_12
    move-object/from16 v50, v11

    .line 1184
    :cond_13
    :goto_14
    move-object/from16 v10, v29

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    if-eqz v11, :cond_14

    .line 1185
    move-object/from16 v29, v12

    move-object/from16 v11, v34

    move-object/from16 v12, v36

    .end local v34    # "contentType":Ljava/util/List;
    .end local v36    # "valueList":Ljava/util/List;
    .local v11, "contentType":Ljava/util/List;
    .local v12, "valueList":Ljava/util/List;
    :try_start_16
    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 1184
    .end local v11    # "contentType":Ljava/util/List;
    .end local v12    # "valueList":Ljava/util/List;
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v36    # "valueList":Ljava/util/List;
    :cond_14
    move-object/from16 v29, v12

    move-object/from16 v11, v34

    move-object/from16 v12, v36

    .line 1188
    .end local v34    # "contentType":Ljava/util/List;
    .end local v36    # "valueList":Ljava/util/List;
    .restart local v11    # "contentType":Ljava/util/List;
    .restart local v12    # "valueList":Ljava/util/List;
    :goto_15
    move-object/from16 v34, v11

    .end local v11    # "contentType":Ljava/util/List;
    .restart local v34    # "contentType":Ljava/util/List;
    const-string v11, "etag"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1189
    if-eqz v12, :cond_15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_15

    .line 1190
    const/4 v11, 0x0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v11, v36

    move-object/from16 v26, v11

    .line 1194
    :cond_15
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    :goto_16
    :try_start_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v39, v36

    .line 1195
    .local v39, "value":Ljava/lang/String;
    move-object/from16 v36, v2

    .end local v2    # "size":Ljava/lang/String;
    .local v36, "size":Ljava/lang/String;
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    move-object/from16 v40, v3

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .local v40, "downgradeRules":Ljava/lang/String;
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v11

    const-string v11, "handleResponse headers "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    .end local v39    # "value":Ljava/lang/String;
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1198
    const-string v2, "image"

    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1199
    const/16 v32, 0x1

    .line 1202
    :cond_16
    const-string v2, "content-length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1203
    move-object v2, v11

    .end local v36    # "size":Ljava/lang/String;
    .restart local v2    # "size":Ljava/lang/String;
    goto :goto_17

    .line 1202
    .end local v2    # "size":Ljava/lang/String;
    .restart local v36    # "size":Ljava/lang/String;
    :cond_17
    move-object/from16 v2, v36

    .line 1206
    .end local v36    # "size":Ljava/lang/String;
    .restart local v2    # "size":Ljava/lang/String;
    :goto_17
    if-eqz v4, :cond_18

    const-string v3, "gzip"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1207
    const/16 v48, 0x1

    .line 1209
    :cond_18
    if-eqz v5, :cond_19

    const-string v3, "chunked"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    if-eqz v3, :cond_19

    .line 1210
    const/16 v47, 0x1

    .line 1212
    :cond_19
    if-eqz v8, :cond_1a

    .line 1213
    move-object v3, v11

    .end local v40    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    goto :goto_18

    .line 1212
    .end local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v40    # "downgradeRules":Ljava/lang/String;
    :cond_1a
    move-object/from16 v3, v40

    .line 1216
    .end local v40    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    :goto_18
    if-eqz v38, :cond_1b

    .line 1217
    move-object/from16 v36, v2

    .end local v2    # "size":Ljava/lang/String;
    .restart local v36    # "size":Ljava/lang/String;
    :try_start_19
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move-object/from16 v39, v3

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .local v39, "downgradeRules":Ljava/lang/String;
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v42, v4

    .end local v4    # "contentEncoding":Z
    .local v42, "contentEncoding":Z
    const-string v4, "use ZURLEncodedUtil encode response header "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_19
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 1219
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1220
    .local v3, "part":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 1218
    nop

    .end local v3    # "part":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1393
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "idx":I
    .end local v5    # "transferEncoding":Z
    .end local v8    # "alipayDowngrade":Z
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "valueList":Ljava/util/List;
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v36    # "size":Ljava/lang/String;
    .end local v38    # "needEncodeValue":Z
    .end local v42    # "contentEncoding":Z
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v39

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto/16 :goto_43

    .end local v39    # "downgradeRules":Ljava/lang/String;
    .local v3, "downgradeRules":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v39, v3

    move-object v1, v0

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v39

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v39    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .line 1216
    .end local v39    # "downgradeRules":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v4    # "contentEncoding":Z
    .restart local v5    # "transferEncoding":Z
    .restart local v8    # "alipayDowngrade":Z
    .restart local v11    # "value":Ljava/lang/String;
    .restart local v12    # "valueList":Ljava/util/List;
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v38    # "needEncodeValue":Z
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :cond_1b
    move-object/from16 v36, v2

    move-object/from16 v39, v3

    move/from16 v42, v4

    .line 1223
    .end local v2    # "size":Ljava/lang/String;
    .end local v3    # "downgradeRules":Ljava/lang/String;
    .end local v4    # "contentEncoding":Z
    .end local v11    # "value":Ljava/lang/String;
    .restart local v36    # "size":Ljava/lang/String;
    .restart local v39    # "downgradeRules":Ljava/lang/String;
    .restart local v42    # "contentEncoding":Z
    :cond_1c
    move-object/from16 v2, v36

    move-object/from16 v3, v39

    move-object/from16 v11, v41

    move/from16 v4, v42

    goto/16 :goto_16

    .line 1393
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "transferEncoding":Z
    .end local v8    # "alipayDowngrade":Z
    .end local v12    # "valueList":Ljava/util/List;
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v36    # "size":Ljava/lang/String;
    .end local v38    # "needEncodeValue":Z
    .end local v39    # "downgradeRules":Ljava/lang/String;
    .end local v42    # "contentEncoding":Z
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    .restart local v40    # "downgradeRules":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v40

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto/16 :goto_43

    .line 1194
    .end local v40    # "downgradeRules":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "size":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v4    # "contentEncoding":Z
    .restart local v5    # "transferEncoding":Z
    .restart local v8    # "alipayDowngrade":Z
    .restart local v12    # "valueList":Ljava/util/List;
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v38    # "needEncodeValue":Z
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :cond_1d
    move-object/from16 v36, v2

    move-object/from16 v40, v3

    move/from16 v42, v4

    .line 1224
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "size":Ljava/lang/String;
    .end local v3    # "downgradeRules":Ljava/lang/String;
    .end local v4    # "contentEncoding":Z
    .end local v5    # "transferEncoding":Z
    .end local v8    # "alipayDowngrade":Z
    .end local v12    # "valueList":Ljava/util/List;
    .end local v38    # "needEncodeValue":Z
    .restart local v36    # "size":Ljava/lang/String;
    .restart local v40    # "downgradeRules":Ljava/lang/String;
    move-object/from16 v12, v29

    move-object/from16 v4, v35

    move/from16 v5, v47

    move/from16 v8, v48

    move-object/from16 v11, v50

    move-object/from16 v29, v10

    move-object/from16 v10, v49

    goto/16 :goto_12

    .line 1393
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v36    # "size":Ljava/lang/String;
    .end local v40    # "downgradeRules":Ljava/lang/String;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v40, v3

    move-object v1, v0

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v40

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v40    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .end local v40    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    move-object v10, v12

    goto/16 :goto_23

    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v8, v49

    goto :goto_1a

    :catchall_10
    move-exception v0

    move-object v1, v0

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    :goto_1a
    const/16 v24, 0x0

    const/16 v29, -0x1

    goto/16 :goto_a

    .line 1226
    .restart local v2    # "size":Ljava/lang/String;
    .local v5, "chunked":Z
    .local v8, "gzip":Z
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    :cond_1e
    move/from16 v47, v5

    move/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move-object/from16 v29, v12

    .end local v5    # "chunked":Z
    .end local v8    # "gzip":Z
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    if-eqz v32, :cond_22

    .line 1227
    const/4 v1, 0x0

    .line 1228
    .local v1, "monitor":Z
    :try_start_1b
    const-string v4, "h5_imageMonitor"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "h5_imageMonitor":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1230
    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1231
    const/4 v1, 0x1

    goto :goto_1b

    .line 1232
    :cond_1f
    const-string v5, "onlyTinyApp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1233
    iget-boolean v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    if-eqz v5, :cond_20

    .line 1234
    const/4 v1, 0x1

    .line 1239
    :cond_20
    :goto_1b
    if-eqz v1, :cond_21

    .line 1240
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^status="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "^size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^costTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->costTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iget v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    iget-wide v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->costTime:J

    move/from16 v35, v1

    .end local v1    # "monitor":Z
    .local v35, "monitor":Z
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    move-object/from16 v36, v4

    .end local v4    # "h5_imageMonitor":Ljava/lang/String;
    .local v36, "h5_imageMonitor":Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    move-object/from16 v38, v5

    move-object/from16 v39, v8

    move-object/from16 v40, v2

    move/from16 v41, v10

    move-wide/from16 v42, v11

    move-object/from16 v44, v1

    move-object/from16 v45, v4

    move-object/from16 v46, v26

    invoke-direct/range {v38 .. v46}, Lcom/alipay/mobile/h5container/api/H5PageImage;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 1243
    .local v1, "h5PageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->getInstance()Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    move-result-object v4

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->put(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PageImage;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    goto :goto_1d

    .line 1239
    .end local v35    # "monitor":Z
    .end local v36    # "h5_imageMonitor":Ljava/lang/String;
    .local v1, "monitor":Z
    .restart local v4    # "h5_imageMonitor":Ljava/lang/String;
    :cond_21
    move/from16 v35, v1

    move-object/from16 v36, v4

    .end local v1    # "monitor":Z
    .end local v4    # "h5_imageMonitor":Ljava/lang/String;
    .restart local v35    # "monitor":Z
    .restart local v36    # "h5_imageMonitor":Ljava/lang/String;
    goto :goto_1d

    .line 1393
    .end local v2    # "size":Ljava/lang/String;
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v35    # "monitor":Z
    .end local v36    # "h5_imageMonitor":Ljava/lang/String;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    :catchall_11
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    :goto_1c
    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto/16 :goto_b

    .line 1247
    .restart local v2    # "size":Ljava/lang/String;
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :cond_22
    :goto_1d
    :try_start_1c
    iget v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_35

    if-eqz v1, :cond_27

    :try_start_1d
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    if-eqz v1, :cond_27

    .line 1249
    move-object/from16 v1, v28

    :try_start_1e
    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1250
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1251
    .local v1, "xContentVersion":Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setXContentVersion(Ljava/lang/String;)V

    .line 1252
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x-content-version "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    .end local v1    # "xContentVersion":Ljava/lang/String;
    :cond_23
    move-object/from16 v1, v20

    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1255
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1256
    .local v1, "requestId":Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setRequestId(Ljava/lang/String;)V

    .line 1258
    .end local v1    # "requestId":Ljava/lang/String;
    :cond_24
    move-object/from16 v1, v18

    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1259
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1260
    .local v1, "eagleId":Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setEagleId(Ljava/lang/String;)V

    .line 1263
    .end local v1    # "eagleId":Ljava/lang/String;
    :cond_25
    move-object/from16 v1, v17

    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1264
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1265
    .local v4, "cdnSafeguard":Ljava/lang/String;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5, v1, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    move-object/from16 v1, v16

    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1267
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1268
    .local v5, "bizScope":Ljava/lang/String;
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8, v1, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v4    # "cdnSafeguard":Ljava/lang/String;
    .end local v5    # "bizScope":Ljava/lang/String;
    :cond_26
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-boolean v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useSpdy:Z

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSpdy(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 1274
    goto :goto_1e

    .line 1272
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1273
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_1e
    :try_start_20
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_35

    if-eqz v1, :cond_28

    .line 1278
    :try_start_21
    invoke-interface {v1, v15}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedResponseHeader(Ljava/util/Map;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 1281
    :cond_28
    :try_start_22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_35

    if-nez v1, :cond_2d

    .line 1282
    :try_start_23
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "handleResponse alipayDowngrade return"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 1283
    const/4 v1, 0x0

    .line 1417
    .end local v25    # "shouldCallEndData":Z
    .local v1, "shouldCallEndData":Z
    if-eqz v1, :cond_29

    .line 1418
    :try_start_24
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v5, v33

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v4, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v4, :cond_29

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v5, :cond_29

    iget v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1425
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v8, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v4, v5, v8}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    goto :goto_1f

    .line 1428
    .end local v4    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_12
    move-exception v0

    move-object v4, v0

    .line 1429
    .local v4, "ex":Ljava/lang/Throwable;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 1430
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_29
    :goto_1f
    nop

    .line 1431
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_25
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    .line 1437
    goto :goto_21

    .line 1435
    :catchall_13
    move-exception v0

    move-object v4, v0

    .line 1436
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v5, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :goto_21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1439
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v29

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v10, v4, v8

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1443
    .local v5, "domainLevel":I
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1444
    .local v6, "scope":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2a

    .line 1445
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v11, v50

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_22

    .line 1447
    :cond_2a
    if-lez v6, :cond_2b

    .line 1448
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v12, v49

    invoke-static {v7, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v10, v6

    invoke-static {v7, v10, v11, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_2b
    :goto_22
    move-object/from16 v7, v27

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v7, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v4    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v5    # "domainLevel":I
    .end local v6    # "scope":I
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return-void

    .line 1393
    .end local v1    # "shouldCallEndData":Z
    .end local v2    # "size":Ljava/lang/String;
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    .restart local v25    # "shouldCallEndData":Z
    :catchall_14
    move-exception v0

    move-object/from16 v10, v29

    move-object v1, v0

    move-object v11, v6

    :goto_23
    move-object v6, v13

    move-object/from16 v16, v27

    goto/16 :goto_1c

    .line 1287
    .restart local v2    # "size":Ljava/lang/String;
    .restart local v15    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :cond_2d
    move-object/from16 v4, v27

    move-object/from16 v10, v29

    move-object/from16 v1, v30

    move-object/from16 v16, v31

    move-object/from16 v5, v33

    move-object/from16 v12, v49

    move-object/from16 v11, v50

    const/4 v8, 0x1

    const/16 v17, 0x0

    :try_start_26
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_34

    move-object/from16 v33, v5

    :try_start_27
    iget v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_33

    move-object/from16 v18, v6

    :try_start_28
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_32

    move-object/from16 v51, v1

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v52, v4

    move-object v4, v2

    .end local v2    # "size":Ljava/lang/String;
    .local v4, "size":Ljava/lang/String;
    move-object v2, v15

    move-object/from16 v17, v3

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .local v17, "downgradeRules":Ljava/lang/String;
    move-object v3, v4

    move-object/from16 v53, v4

    move-object/from16 v20, v15

    move-object/from16 v54, v16

    const/4 v15, 0x1

    .end local v4    # "size":Ljava/lang/String;
    .end local v15    # "responseHeaders":Ljava/util/Map;
    .local v20, "responseHeaders":Ljava/util/Map;
    .local v53, "size":Ljava/lang/String;
    move-object/from16 v4, v34

    move-object/from16 v49, v12

    move-object/from16 v12, v33

    move/from16 v15, v47

    .end local v47    # "chunked":Z
    .local v15, "chunked":Z
    move-object/from16 v50, v11

    move-object/from16 v11, v18

    :try_start_29
    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseHeaders(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ILcom/alipay/mobile/h5container/api/H5Page;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 1289
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse gzip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v48

    .end local v48    # "gzip":Z
    .local v3, "gzip":Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse chunked "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setProtocolToPageData(Ljava/lang/String;)V

    .line 1294
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_31

    if-eqz v1, :cond_2e

    .line 1295
    :try_start_2a
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 1296
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_2e

    .line 1297
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1298
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1299
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 1300
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "reqUrl"

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string v4, "reqId"

    iget v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bugmeReqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string v4, "method"

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string v4, "statusCode"

    iget v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string v4, "fromLocalPkg"

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string v4, "protocol"

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string v5, "finish"

    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    goto :goto_24

    .line 1393
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "gzip":Z
    .end local v15    # "chunked":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v53    # "size":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object v1, v0

    move-object v6, v13

    move-object/from16 v13, v17

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v29, -0x1

    goto/16 :goto_43

    .line 1310
    .restart local v3    # "gzip":Z
    .restart local v15    # "chunked":Z
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v53    # "size":Ljava/lang/String;
    :cond_2e
    :goto_24
    :try_start_2b
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_31

    .line 1311
    .end local v19    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_2c
    iget v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-direct {v9, v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isRedirect(I)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_30

    if-eqz v2, :cond_34

    .line 1312
    :try_start_2d
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "handleResponse isRedirect return"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    if-eqz v2, :cond_2f

    .line 1314
    :try_start_2e
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "setContentBeforeRedirect false"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    const/4 v8, 0x0

    :try_start_2f
    invoke-interface {v2, v8}, Lcom/alipay/mobile/h5container/api/H5Page;->setContentBeforeRedirect(Z)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    goto :goto_25

    .line 1393
    .end local v3    # "gzip":Z
    .end local v15    # "chunked":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v53    # "size":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-object/from16 v19, v1

    move-object v6, v13

    move-object/from16 v13, v17

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    goto/16 :goto_43

    :catchall_17
    move-exception v0

    move-object/from16 v19, v1

    move-object v6, v13

    move-object/from16 v13, v17

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v29, -0x1

    move-object v1, v0

    goto/16 :goto_43

    .line 1313
    .restart local v3    # "gzip":Z
    .restart local v15    # "chunked":Z
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v53    # "size":Ljava/lang/String;
    :cond_2f
    const/4 v8, 0x0

    .line 1417
    :goto_25
    if-eqz v25, :cond_30

    .line 1418
    :try_start_30
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v2, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v2, :cond_30

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_30

    iget v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1425
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    goto :goto_26

    .line 1428
    .end local v2    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_18
    move-exception v0

    move-object v2, v0

    .line 1429
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 1430
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_30
    :goto_26
    nop

    .line 1431
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_31
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    .line 1437
    goto :goto_28

    .line 1435
    :catchall_19
    move-exception v0

    move-object v2, v0

    .line 1436
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_28
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1439
    move-object/from16 v2, v17

    .end local v17    # "downgradeRules":Ljava/lang/String;
    .local v2, "downgradeRules":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v10, v4, v7

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1443
    .restart local v5    # "domainLevel":I
    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1444
    .restart local v6    # "scope":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_31

    .line 1445
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v10, v50

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_29

    .line 1447
    :cond_31
    if-lez v6, :cond_32

    .line 1448
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v10, v49

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v10, v6

    invoke-static {v7, v10, v11, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_32
    :goto_29
    move-object/from16 v7, v52

    invoke-virtual {v9, v8, v7, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    goto :goto_2a

    .line 1438
    .end local v2    # "downgradeRules":Ljava/lang/String;
    .end local v4    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v5    # "domainLevel":I
    .end local v6    # "scope":I
    .restart local v17    # "downgradeRules":Ljava/lang/String;
    :cond_33
    move-object/from16 v2, v17

    .line 1454
    .end local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v54

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v51

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    return-void

    .line 1393
    .end local v2    # "downgradeRules":Ljava/lang/String;
    .end local v3    # "gzip":Z
    .end local v15    # "chunked":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v53    # "size":Ljava/lang/String;
    .restart local v17    # "downgradeRules":Ljava/lang/String;
    :catchall_1a
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v19, v1

    move-object v6, v13

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    .end local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .line 1319
    .end local v2    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "gzip":Z
    .restart local v15    # "chunked":Z
    .restart local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v53    # "size":Ljava/lang/String;
    :cond_34
    move-object/from16 v2, v17

    move-object/from16 v56, v49

    move-object/from16 v55, v50

    move-object/from16 v4, v51

    move-object/from16 v5, v52

    move-object/from16 v6, v54

    const/4 v8, 0x0

    .end local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    if-nez v1, :cond_3a

    .line 1320
    :try_start_32
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move/from16 v47, v15

    .end local v15    # "chunked":Z
    .restart local v47    # "chunked":Z
    const-string v15, "handleResponse inputStream null return"

    invoke-static {v8, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1e

    if-eqz v8, :cond_35

    .line 1322
    :try_start_33
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v15, "setContentBeforeRedirect false"

    invoke-static {v8, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lcom/alipay/mobile/h5container/api/H5Page;->setContentBeforeRedirect(Z)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    goto :goto_2b

    .line 1393
    .end local v3    # "gzip":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v53    # "size":Ljava/lang/String;
    :catchall_1b
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move-object/from16 v28, v6

    move-object v6, v13

    move-object/from16 v15, v55

    move-object/from16 v8, v56

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .line 1417
    .restart local v3    # "gzip":Z
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v53    # "size":Ljava/lang/String;
    :cond_35
    :goto_2b
    if-eqz v25, :cond_36

    .line 1418
    :try_start_34
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v8, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v8, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v8, :cond_36

    iget-object v12, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v12, :cond_36

    iget v12, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 1425
    iget-object v12, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v15, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v8, v12, v15}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    goto :goto_2c

    .line 1428
    .end local v8    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_1c
    move-exception v0

    move-object v8, v0

    .line 1429
    .local v8, "ex":Ljava/lang/Throwable;
    iget-object v12, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v12, v11, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 1430
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_36
    :goto_2c
    nop

    .line 1431
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_35
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    .line 1437
    goto :goto_2e

    .line 1435
    :catchall_1d
    move-exception v0

    move-object v8, v0

    .line 1436
    .local v8, "throwable":Ljava/lang/Throwable;
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v11, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v8    # "throwable":Ljava/lang/Throwable;
    :goto_2e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 1439
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1440
    .local v7, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v8, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v7, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v13, v7, v10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v8, v7, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1443
    .local v8, "domainLevel":I
    aget-object v10, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1444
    .local v10, "scope":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_37

    .line 1445
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v15, v55

    invoke-static {v11, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_2f

    .line 1447
    :cond_37
    if-lez v10, :cond_38

    .line 1448
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v12, v56

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v12, v10

    invoke-static {v11, v12, v13, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_38
    :goto_2f
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5, v11}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v7    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v8    # "domainLevel":I
    .end local v10    # "scope":I
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v7, v10

    iput-wide v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    return-void

    .line 1393
    .end local v3    # "gzip":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v53    # "size":Ljava/lang/String;
    :catchall_1e
    move-exception v0

    move-object/from16 v15, v55

    move-object/from16 v8, v56

    move-object/from16 v19, v1

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move-object/from16 v28, v6

    move-object v6, v13

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .line 1327
    .restart local v3    # "gzip":Z
    .restart local v15    # "chunked":Z
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v53    # "size":Ljava/lang/String;
    :cond_3a
    move/from16 v47, v15

    move-object/from16 v15, v55

    move-object/from16 v8, v56

    .end local v15    # "chunked":Z
    .restart local v47    # "chunked":Z
    move-object/from16 v30, v4

    :try_start_36
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2f

    if-eqz v4, :cond_3b

    .line 1328
    :try_start_37
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_20

    move-object/from16 v31, v6

    :try_start_38
    const-string v6, "setContentBeforeRedirect true"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/alipay/mobile/h5container/api/H5Page;->setContentBeforeRedirect(Z)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f

    goto :goto_30

    .line 1393
    .end local v3    # "gzip":Z
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v53    # "size":Ljava/lang/String;
    :catchall_1f
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v16, v5

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    :catchall_20
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v16, v5

    move-object/from16 v28, v6

    move-object v6, v13

    move-object/from16 v22, v30

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .line 1327
    .restart local v3    # "gzip":Z
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v53    # "size":Ljava/lang/String;
    :cond_3b
    move-object/from16 v31, v6

    .line 1331
    :goto_30
    const/4 v4, 0x0

    .line 1332
    .local v4, "totalLength":I
    const/16 v6, 0x1000

    :try_start_39
    new-array v6, v6, [B

    .line 1335
    .local v6, "buffer":[B
    move/from16 v16, v4

    .end local v4    # "totalLength":I
    .local v16, "totalLength":I
    iget-boolean v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mIsFallbackRequest:Z
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2e

    if-eqz v4, :cond_3c

    .line 1336
    :try_start_3a
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1f

    move-object/from16 v52, v5

    :try_start_3b
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mFallbackOriginUrl:Ljava/lang/String;

    .line 1337
    invoke-static {v1, v3, v4, v5}, Lcom/alipay/mobile/nebulauc/impl/network/FallbackRequestHelper;->setFallbackCache(Ljava/io/InputStream;ZLcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_21

    move-object v1, v4

    goto :goto_31

    .line 1393
    .end local v3    # "gzip":Z
    .end local v6    # "buffer":[B
    .end local v16    # "totalLength":I
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v53    # "size":Ljava/lang/String;
    :catchall_21
    move-exception v0

    move-object/from16 v19, v1

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .line 1335
    .restart local v3    # "gzip":Z
    .restart local v6    # "buffer":[B
    .restart local v16    # "totalLength":I
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v53    # "size":Ljava/lang/String;
    :cond_3c
    move-object/from16 v52, v5

    .line 1341
    :goto_31
    :try_start_3c
    invoke-direct {v9, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handlerInput(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    .line 1342
    .local v4, "testInput":Ljava/io/InputStream;
    if-eqz v4, :cond_3d

    .line 1343
    move-object v1, v4

    .line 1346
    :cond_3d
    move-object/from16 v17, v4

    move-object/from16 v5, v34

    move-object/from16 v4, v53

    .end local v34    # "contentType":Ljava/util/List;
    .end local v53    # "size":Ljava/lang/String;
    .local v4, "size":Ljava/lang/String;
    .local v5, "contentType":Ljava/util/List;
    .local v17, "testInput":Ljava/io/InputStream;
    invoke-direct {v9, v1, v4, v3, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handlerInputForEdgeRisk(Ljava/io/InputStream;Ljava/lang/String;ZLjava/util/List;)Ljava/io/InputStream;

    move-result-object v18
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2d

    .line 1347
    .local v18, "edgeRiskInput":Ljava/io/InputStream;
    if-eqz v18, :cond_3e

    .line 1348
    move-object/from16 v1, v18

    move-object/from16 v19, v1

    goto :goto_32

    .line 1347
    :cond_3e
    move-object/from16 v19, v1

    .line 1352
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "inputStream":Ljava/io/InputStream;
    :goto_32
    :try_start_3d
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isSupportNetworkSupervisor()Z

    move-result v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2c

    if-eqz v1, :cond_41

    .line 1353
    :try_start_3e
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v34, v5

    .end local v5    # "contentType":Ljava/util/List;
    .restart local v34    # "contentType":Ljava/util/List;
    const-string v5, "h5netsupervisor response begin"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    .line 1355
    .local v27, "start":J
    new-instance v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;-><init>()V

    .line 1356
    .local v1, "suResponse":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setUrl(Ljava/lang/String;)V

    .line 1357
    iget v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setStatus(I)V

    .line 1360
    move-object/from16 v5, v20

    .end local v20    # "responseHeaders":Ljava/util/Map;
    .local v5, "responseHeaders":Ljava/util/Map;
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setHeaders(Ljava/util/Map;)V

    .line 1361
    move-object/from16 v20, v5

    .end local v5    # "responseHeaders":Ljava/util/Map;
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setMethod(Ljava/lang/String;)V

    .line 1363
    if-eqz v3, :cond_3f

    iget-boolean v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mIsFallbackRequest:Z

    if-nez v5, :cond_3f

    const/4 v5, 0x1

    goto :goto_33

    :cond_3f
    const/4 v5, 0x0

    :goto_33
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setGzip(Z)V

    .line 1364
    move/from16 v5, v47

    .end local v47    # "chunked":Z
    .local v5, "chunked":Z
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setChunked(Z)V

    .line 1365
    move/from16 v48, v3

    .end local v3    # "gzip":Z
    .restart local v48    # "gzip":Z
    const-string v3, "publicid"

    move/from16 v47, v5

    .end local v5    # "chunked":Z
    .restart local v47    # "chunked":Z
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->publicId:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string v3, "appid"

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    if-eqz v19, :cond_40

    .line 1368
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 1369
    .local v3, "reqData":[B
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1370
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v19, v5

    .line 1371
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->setBody([B)V

    .line 1373
    .end local v3    # "reqData":[B
    :cond_40
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->post(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;)V

    .line 1374
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v1

    .end local v1    # "suResponse":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;
    .local v29, "suResponse":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;
    const-string v1, "h5netsupervisor response end cost "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_23

    move-object/from16 v37, v13

    move-object/from16 v33, v14

    sub-long v13, v35, v27

    :try_start_3f
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    move-object/from16 v1, v19

    goto :goto_34

    .line 1393
    .end local v4    # "size":Ljava/lang/String;
    .end local v6    # "buffer":[B
    .end local v16    # "totalLength":I
    .end local v17    # "testInput":Ljava/io/InputStream;
    .end local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v27    # "start":J
    .end local v29    # "suResponse":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    :catchall_22
    move-exception v0

    move-object v1, v0

    move-object v13, v2

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto/16 :goto_43

    :catchall_23
    move-exception v0

    move-object v1, v0

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v13, v2

    goto/16 :goto_43

    .line 1352
    .local v3, "gzip":Z
    .restart local v4    # "size":Ljava/lang/String;
    .local v5, "contentType":Ljava/util/List;
    .restart local v6    # "buffer":[B
    .restart local v16    # "totalLength":I
    .restart local v17    # "testInput":Ljava/io/InputStream;
    .restart local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v47    # "chunked":Z
    :cond_41
    move/from16 v48, v3

    move-object/from16 v34, v5

    move-object/from16 v37, v13

    move-object/from16 v33, v14

    .end local v3    # "gzip":Z
    .end local v5    # "contentType":Ljava/util/List;
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v48    # "gzip":Z
    move-object/from16 v1, v19

    .line 1377
    .end local v19    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_34
    :try_start_40
    const-string v3, "eventHandler.data"

    const/4 v5, 0x0

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    const-string v19, "size"
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2b

    const/16 v24, 0x0

    :try_start_41
    aput-object v19, v14, v24
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_2a

    const/16 v19, 0x1

    :try_start_42
    aput-object v4, v14, v19

    invoke-static {v3, v5, v14}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2b

    move/from16 v3, v16

    .line 1379
    .end local v16    # "totalLength":I
    .local v3, "totalLength":I
    :goto_35
    const/4 v5, -0x1

    .line 1381
    .local v5, "length":I
    :try_start_43
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_43
    .catch Ljava/io/EOFException; {:try_start_43 .. :try_end_43} :catch_1
    .catchall {:try_start_43 .. :try_end_43} :catchall_24

    move v5, v14

    .line 1384
    move-object/from16 v27, v6

    goto :goto_36

    .line 1393
    .end local v3    # "totalLength":I
    .end local v4    # "size":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "buffer":[B
    .end local v17    # "testInput":Ljava/io/InputStream;
    .end local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    :catchall_24
    move-exception v0

    move-object/from16 v19, v1

    move-object v13, v2

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    goto/16 :goto_43

    .line 1382
    .restart local v3    # "totalLength":I
    .restart local v4    # "size":Ljava/lang/String;
    .restart local v5    # "length":I
    .restart local v6    # "buffer":[B
    .restart local v17    # "testInput":Ljava/io/InputStream;
    .restart local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :catch_1
    move-exception v0

    move-object v14, v0

    .line 1383
    .local v14, "e":Ljava/io/EOFException;
    :try_start_44
    iget-object v13, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move/from16 v16, v5

    .end local v5    # "length":I
    .local v16, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    .end local v6    # "buffer":[B
    .local v27, "buffer":[B
    const-string v6, "handleResponse eof "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2b

    move/from16 v5, v16

    .line 1385
    .end local v14    # "e":Ljava/io/EOFException;
    .end local v16    # "length":I
    .restart local v5    # "length":I
    :goto_36
    const/4 v6, -0x1

    if-ne v5, v6, :cond_46

    .line 1386
    nop

    .line 1391
    .end local v5    # "length":I
    :try_start_45
    const-string v5, "eventHandler.data"

    const/4 v6, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "size"

    const/16 v16, 0x0

    aput-object v14, v13, v16

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-static {v5, v6, v13}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1392
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleResponse end "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_27

    .line 1417
    .end local v3    # "totalLength":I
    .end local v4    # "size":Ljava/lang/String;
    .end local v17    # "testInput":Ljava/io/InputStream;
    .end local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v27    # "buffer":[B
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    if-eqz v25, :cond_42

    .line 1418
    :try_start_46
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v3, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v3, :cond_42

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_42

    iget v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1425
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_25

    goto :goto_37

    .line 1428
    .end local v3    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_25
    move-exception v0

    move-object v3, v0

    .line 1429
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v11, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 1430
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_42
    :goto_37
    nop

    .line 1431
    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_47
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_26

    .line 1437
    goto :goto_39

    .line 1435
    :catchall_26
    move-exception v0

    move-object v3, v0

    .line 1436
    .local v3, "throwable":Ljava/lang/Throwable;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1439
    move-object/from16 v14, v33

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v37

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v10, v3, v7

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1443
    .local v4, "domainLevel":I
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1444
    .local v5, "scope":I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_43

    .line 1445
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_3a

    .line 1447
    :cond_43
    if-lez v5, :cond_44

    .line 1448
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v7, v5

    invoke-static {v6, v7, v8, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_44
    :goto_3a
    move-object/from16 v6, v52

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v6, v7}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v3    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v4    # "domainLevel":I
    .end local v5    # "scope":I
    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v3, v5

    iput-wide v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    move-object v3, v2

    move/from16 v15, v25

    goto/16 :goto_4c

    .line 1393
    :catchall_27
    move-exception v0

    move-object/from16 v22, v30

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    const/4 v13, -0x1

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object v13, v2

    move-object/from16 v28, v31

    const/16 v29, -0x1

    move-object v1, v0

    goto/16 :goto_43

    .line 1388
    .local v3, "totalLength":I
    .local v4, "size":Ljava/lang/String;
    .local v5, "length":I
    .restart local v17    # "testInput":Ljava/io/InputStream;
    .restart local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .restart local v20    # "responseHeaders":Ljava/util/Map;
    .restart local v26    # "etag":Ljava/lang/String;
    .restart local v27    # "buffer":[B
    .restart local v32    # "isNeedLogger":Z
    .restart local v34    # "contentType":Ljava/util/List;
    .restart local v47    # "chunked":Z
    .restart local v48    # "gzip":Z
    :cond_46
    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    const/4 v13, 0x2

    const/16 v24, 0x0

    const/16 v29, -0x1

    :try_start_48
    iget-object v13, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_29

    move-object/from16 v19, v1

    move-object/from16 v1, v27

    .end local v27    # "buffer":[B
    .local v1, "buffer":[B
    .restart local v19    # "inputStream":Ljava/io/InputStream;
    :try_start_49
    invoke-interface {v13, v1, v5}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_28

    .line 1389
    add-int/2addr v3, v5

    .line 1390
    .end local v5    # "length":I
    move-object/from16 v37, v6

    move-object/from16 v33, v14

    move-object/from16 v52, v16

    move-object/from16 v30, v22

    move-object/from16 v31, v28

    const/4 v13, 0x2

    move-object v6, v1

    move-object/from16 v1, v19

    goto/16 :goto_35

    .line 1393
    .end local v1    # "buffer":[B
    .end local v3    # "totalLength":I
    .end local v4    # "size":Ljava/lang/String;
    .end local v17    # "testInput":Ljava/io/InputStream;
    .end local v18    # "edgeRiskInput":Ljava/io/InputStream;
    .end local v20    # "responseHeaders":Ljava/util/Map;
    .end local v26    # "etag":Ljava/lang/String;
    .end local v32    # "isNeedLogger":Z
    .end local v34    # "contentType":Ljava/util/List;
    .end local v47    # "chunked":Z
    .end local v48    # "gzip":Z
    :catchall_28
    move-exception v0

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .end local v19    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :catchall_29
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_3c

    :catchall_2a
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    goto :goto_3b

    :catchall_2b
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v16, v52

    const/16 v24, 0x0

    :goto_3b
    const/16 v29, -0x1

    :goto_3c
    move-object v1, v0

    move-object v13, v2

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_43

    :catchall_2c
    move-exception v0

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    .end local v19    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_2d
    move-exception v0

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v16, v52

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v19, v1

    move-object v13, v2

    move-object v1, v0

    goto/16 :goto_43

    :catchall_2e
    move-exception v0

    move-object/from16 v16, v5

    move-object v6, v13

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v19, v1

    move-object v13, v2

    move-object v1, v0

    goto/16 :goto_43

    :catchall_2f
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v28, v6

    move-object v6, v13

    move-object/from16 v22, v30

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v19, v1

    move-object v13, v2

    move-object v1, v0

    goto/16 :goto_43

    .end local v2    # "downgradeRules":Ljava/lang/String;
    .local v17, "downgradeRules":Ljava/lang/String;
    :catchall_30
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, v17

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v29, -0x1

    move-object/from16 v19, v1

    move-object v13, v2

    move-object v1, v0

    .end local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "downgradeRules":Ljava/lang/String;
    .restart local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v19    # "inputStream":Ljava/io/InputStream;
    :catchall_31
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, v17

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    move-object/from16 v22, v51

    move-object/from16 v16, v52

    move-object/from16 v28, v54

    const/16 v29, -0x1

    move-object v1, v0

    move-object v13, v2

    .end local v17    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .end local v2    # "downgradeRules":Ljava/lang/String;
    .local v3, "downgradeRules":Ljava/lang/String;
    :catchall_32
    move-exception v0

    move-object/from16 v22, v1

    move-object v2, v3

    move-object v15, v11

    move-object v8, v12

    move-object v6, v13

    move-object/from16 v28, v16

    move-object/from16 v11, v18

    move-object/from16 v12, v33

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v16, v4

    goto/16 :goto_3e

    :catchall_33
    move-exception v0

    move-object/from16 v22, v1

    move-object v2, v3

    move-object v15, v11

    move-object v8, v12

    move-object/from16 v28, v16

    move-object/from16 v12, v33

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v16, v4

    goto :goto_3d

    :catchall_34
    move-exception v0

    move-object/from16 v22, v1

    move-object v2, v3

    move-object v15, v11

    move-object v8, v12

    move-object/from16 v28, v16

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object/from16 v16, v4

    move-object v12, v5

    goto :goto_3d

    :catchall_35
    move-exception v0

    move-object v2, v3

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v16, v27

    move-object/from16 v10, v29

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    move-object/from16 v8, v49

    move-object/from16 v15, v50

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto :goto_3e

    :catchall_36
    move-exception v0

    move-object v2, v3

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    const/16 v24, 0x0

    const/16 v29, -0x1

    :goto_3d
    move-object v11, v6

    move-object v6, v13

    :goto_3e
    move-object v1, v0

    move-object v13, v2

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v2    # "downgradeRules":Ljava/lang/String;
    goto/16 :goto_43

    .end local v2    # "downgradeRules":Ljava/lang/String;
    .local v26, "downgradeRules":Ljava/lang/String;
    :catchall_37
    move-exception v0

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    move-object/from16 v12, v33

    const/16 v24, 0x0

    const/16 v29, -0x1

    goto :goto_40

    :catchall_38
    move-exception v0

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    move-object/from16 v16, v27

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    goto :goto_3f

    :catchall_39
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    :goto_3f
    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    :goto_40
    move-object v11, v6

    move-object v6, v13

    move-object v1, v0

    :goto_41
    move-object/from16 v13, v26

    goto :goto_43

    .end local v26    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    :catchall_3a
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v15, v11

    move-object v10, v12

    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    move-object v11, v6

    move-object v6, v13

    move-object v1, v0

    move-object/from16 v13, v26

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .restart local v26    # "downgradeRules":Ljava/lang/String;
    goto :goto_43

    .end local v25    # "shouldCallEndData":Z
    .end local v26    # "downgradeRules":Ljava/lang/String;
    .restart local v3    # "downgradeRules":Ljava/lang/String;
    .local v15, "shouldCallEndData":Z
    :catchall_3b
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v22, v8

    move-object v8, v10

    move-object v10, v12

    move/from16 v25, v15

    goto :goto_42

    :catchall_3c
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v26, v3

    move-object v8, v10

    move-object v10, v12

    move/from16 v25, v15

    move-object/from16 v22, v30

    move-object/from16 v28, v31

    :goto_42
    const/16 v24, 0x0

    const/16 v29, -0x1

    move-object v12, v5

    move-object v15, v11

    move-object v11, v6

    move-object v6, v13

    move-object v1, v0

    move-object/from16 v13, v26

    .end local v3    # "downgradeRules":Ljava/lang/String;
    .end local v15    # "shouldCallEndData":Z
    .local v13, "downgradeRules":Ljava/lang/String;
    .restart local v25    # "shouldCallEndData":Z
    :goto_43
    move-object v5, v1

    .line 1394
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4a
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "handleResponse exception."

    invoke-static {v1, v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1395
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_44

    .line 1398
    :try_start_4b
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse exception "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-boolean v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useSpdy:Z
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_40

    if-eqz v1, :cond_47

    :try_start_4c
    const-string v1, "YES"
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_3d

    move-object/from16 v20, v1

    goto :goto_44

    .line 1408
    :catchall_3d
    move-exception v0

    move-object v1, v0

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move-object/from16 v62, v8

    move-object/from16 v50, v15

    move-object/from16 v57, v16

    move-object/from16 v61, v22

    move-object/from16 v60, v28

    const/4 v15, 0x0

    move-object/from16 v16, v5

    goto/16 :goto_46

    .line 1399
    :cond_47
    move-object/from16 v20, v16

    :goto_44
    :try_start_4d
    const-string v26, "NO"
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_40

    const/16 v27, 0x0

    .line 1398
    move-object/from16 v1, p0

    move-object/from16 v17, v22

    const/4 v4, 0x6

    move-object/from16 v57, v16

    move-object/from16 v16, v5

    .end local v5    # "t":Ljava/lang/Throwable;
    .local v16, "t":Ljava/lang/Throwable;
    move-object/from16 v5, v18

    move-object/from16 v58, v6

    move-object/from16 v18, v28

    move-object/from16 v6, v20

    move-object/from16 v59, v7

    move-object/from16 v7, v26

    move-object/from16 v62, v8

    move-object/from16 v50, v15

    move-object/from16 v61, v17

    move-object/from16 v60, v18

    const/4 v15, 0x0

    move/from16 v8, v27

    :try_start_4e
    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1400
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableSendErrorToUcWhenException:Z

    if-eqz v1, :cond_48

    .line 1402
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    const/4 v2, -0x7

    const-string v3, "handleResponse exception"

    invoke-interface {v1, v2, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 1403
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "call eventHandler.error"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_3f

    move/from16 v1, v25

    goto :goto_45

    .line 1405
    :cond_48
    const/4 v1, 0x0

    .line 1406
    .end local v25    # "shouldCallEndData":Z
    .local v1, "shouldCallEndData":Z
    :try_start_4f
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "not call eventHandler.error"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_3e

    .line 1411
    :goto_45
    goto :goto_47

    .line 1408
    :catchall_3e
    move-exception v0

    move/from16 v25, v1

    move-object v1, v0

    goto :goto_46

    .end local v1    # "shouldCallEndData":Z
    .restart local v25    # "shouldCallEndData":Z
    :catchall_3f
    move-exception v0

    move-object v1, v0

    goto :goto_46

    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v5    # "t":Ljava/lang/Throwable;
    :catchall_40
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move-object/from16 v62, v8

    move-object/from16 v50, v15

    move-object/from16 v57, v16

    move-object/from16 v61, v22

    move-object/from16 v60, v28

    const/4 v15, 0x0

    move-object/from16 v16, v5

    move-object v1, v0

    .line 1409
    .end local v5    # "t":Ljava/lang/Throwable;
    .local v1, "throwable":Ljava/lang/Throwable;
    .restart local v16    # "t":Ljava/lang/Throwable;
    :goto_46
    :try_start_50
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "handleResponse exception eventHandler.error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_43

    .line 1410
    const/4 v2, 0x0

    move v1, v2

    .line 1417
    .end local v16    # "t":Ljava/lang/Throwable;
    .end local v25    # "shouldCallEndData":Z
    .local v1, "shouldCallEndData":Z
    :goto_47
    if-eqz v1, :cond_49

    .line 1418
    :try_start_51
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v2, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v2, :cond_49

    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_49

    iget v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1425
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_41

    goto :goto_48

    .line 1428
    .end local v2    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_41
    move-exception v0

    move-object v2, v0

    .line 1429
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49

    .line 1430
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_49
    :goto_48
    nop

    .line 1431
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_52
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_42

    .line 1437
    goto :goto_4a

    .line 1435
    :catchall_42
    move-exception v0

    move-object v2, v0

    .line 1436
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v4, v59

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_4a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1439
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1440
    .local v2, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v58

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1443
    .local v3, "domainLevel":I
    aget-object v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1444
    .local v4, "scope":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4a

    .line 1445
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v6, v50

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    goto :goto_4b

    .line 1447
    :cond_4a
    if-lez v4, :cond_4b

    .line 1448
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    move-object/from16 v7, v62

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v6, v4

    invoke-static {v5, v6, v7, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    .line 1451
    :cond_4b
    :goto_4b
    move-object/from16 v8, v57

    invoke-virtual {v9, v15, v8, v15}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v2    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v3    # "domainLevel":I
    .end local v4    # "scope":I
    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v60

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    move v15, v1

    move-object v3, v13

    move-object/from16 v1, v19

    .line 1457
    .end local v13    # "downgradeRules":Ljava/lang/String;
    .end local v19    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    .local v3, "downgradeRules":Ljava/lang/String;
    .restart local v15    # "shouldCallEndData":Z
    :goto_4c
    return-void

    .line 1416
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "downgradeRules":Ljava/lang/String;
    .end local v15    # "shouldCallEndData":Z
    .restart local v13    # "downgradeRules":Ljava/lang/String;
    .restart local v19    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "shouldCallEndData":Z
    :catchall_43
    move-exception v0

    move-object/from16 v6, v50

    move-object/from16 v8, v57

    move-object/from16 v5, v58

    move-object/from16 v4, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    move-object/from16 v7, v62

    goto :goto_4d

    :catchall_44
    move-exception v0

    move-object v5, v6

    move-object v4, v7

    move-object v7, v8

    move-object v6, v15

    move-object/from16 v8, v16

    move-object/from16 v2, v22

    move-object/from16 v1, v28

    const/4 v15, 0x0

    :goto_4d
    move-object v3, v0

    .line 1417
    if-eqz v25, :cond_4f

    .line 1418
    :try_start_53
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v15}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 1419
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v15, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-class v12, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1422
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1423
    .local v12, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    if-eqz v12, :cond_4e

    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v15, :cond_4e

    iget v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    .line 1424
    invoke-static {v15}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v15

    if-eqz v15, :cond_4d

    .line 1425
    iget-object v15, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_46

    move-object/from16 v16, v3

    :try_start_54
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v12, v15, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_45

    goto :goto_4f

    .line 1428
    .end local v12    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_45
    move-exception v0

    goto :goto_4e

    .line 1424
    .restart local v12    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :cond_4d
    move-object/from16 v16, v3

    goto :goto_4f

    .line 1423
    :cond_4e
    move-object/from16 v16, v3

    goto :goto_4f

    .line 1428
    .end local v12    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :catchall_46
    move-exception v0

    move-object/from16 v16, v3

    :goto_4e
    move-object v3, v0

    .line 1429
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v12, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v12, v11, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 1417
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_4f
    move-object/from16 v16, v3

    .line 1430
    :goto_4f
    nop

    .line 1431
    :goto_50
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 1434
    :try_start_55
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_47

    .line 1437
    goto :goto_51

    .line 1435
    :catchall_47
    move-exception v0

    move-object v3, v0

    .line 1436
    .local v3, "throwable":Ljava/lang/Throwable;
    iget-object v11, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v11, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_51
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1439
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, "downgradeRulesArray":[Ljava/lang/String;
    iget-object v4, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v12, v3, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v12, v3, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    aget-object v4, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1443
    .local v4, "domainLevel":I
    aget-object v10, v3, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1444
    .local v5, "scope":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_50

    .line 1447
    if-lez v5, :cond_51

    .line 1448
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    int-to-long v10, v5

    invoke-static {v6, v10, v11, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addDiskDowngradeRule(Ljava/lang/String;JI)V

    goto :goto_52

    .line 1445
    :cond_50
    iget-object v7, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v6, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addMemoryDowngradeRule(Ljava/lang/String;I)V

    .line 1451
    :cond_51
    :goto_52
    const/4 v6, 0x0

    invoke-virtual {v9, v6, v8, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1454
    .end local v3    # "downgradeRulesArray":[Ljava/lang/String;
    .end local v4    # "domainLevel":I
    .end local v5    # "scope":I
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    sub-long/2addr v3, v5

    iput-wide v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    .line 1455
    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v16
.end method

.method private handleResponseHeaders(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ILcom/alipay/mobile/h5container/api/H5Page;)Ljava/util/Map;
    .locals 8
    .param p1, "originResHeaders"    # Ljava/util/Map;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/util/List;
    .param p4, "statusCode"    # I
    .param p5, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1472
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mIsFallbackRequest:Z

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set fallback request header fallbackUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mFallbackOriginUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mFallbackOriginUrl:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/alipay/mobile/nebulauc/impl/network/FallbackRequestHelper;->getFallbackHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1477
    .local v0, "responseHeaders":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1480
    if-nez p5, :cond_1

    const/16 v1, 0x194

    if-ne p4, v1, :cond_1

    .line 1481
    const-string v1, "h5_enableNetworkFallbackAsync"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1482
    .local v1, "fallbackAsyncSwitch":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 1483
    .local v2, "enableAsyncFallback":Z
    const-string v4, "enableNoStoreFor404"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 1484
    .local v3, "enableNoStoreFor404":Z
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    .local v4, "cacheControl":Ljava/util/List;
    const-string v5, "no-store"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    const-string v5, "Cache-Control"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set no-store for 404 response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .end local v1    # "fallbackAsyncSwitch":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "enableAsyncFallback":Z
    .end local v3    # "enableNoStoreFor404":Z
    .end local v4    # "cacheControl":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "cosUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->checkCrossOrigin:Z

    if-eqz v2, :cond_2

    .line 1494
    const-string v2, "Access-Control-Allow-Credentials"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1495
    const-string v2, "access-control-allow-credentials"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1496
    const-string v2, "Access-Control-Allow-Origin"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1497
    const-string v3, "access-control-allow-origin"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1498
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1499
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set access-control-allow-origin header cosUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v3, "acao":Ljava/util/List;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    .end local v3    # "acao":Ljava/util/List;
    :cond_2
    return-object v0
.end method

.method private handleSecureIntercept(Ljava/lang/String;I)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .line 539
    move-object v9, p0

    const-string v0, ""

    :try_start_0
    const-string v1, "utf-8"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v10, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v11, v1

    .line 540
    .local v11, "responseDate":[B
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    move/from16 v12, p2

    :try_start_2
    invoke-interface {v1, v2, v2, v12, v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 541
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v13, v1

    .line 542
    .local v13, "headers":Ljava/util/Map;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 543
    .local v14, "contentLengthList":Ljava/util/List;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v0, "Content-Length"

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "typeList":Ljava/util/List;
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    const-string v1, "Content-Type"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1, v13}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 551
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    array-length v2, v11

    invoke-interface {v1, v11, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    .line 552
    iget-object v2, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    const-string v6, "NO"

    const-string v7, "NO"

    const/4 v8, 0x0

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "typeList":Ljava/util/List;
    .end local v11    # "responseDate":[B
    .end local v13    # "headers":Ljava/util/Map;
    .end local v14    # "contentLengthList":Ljava/util/List;
    goto :goto_2

    .line 553
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move/from16 v12, p2

    .line 554
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "handleSecureIntercept: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 556
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 557
    nop

    .line 558
    return-void

    .line 556
    :catchall_3
    move-exception v0

    iget-object v1, v9, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    throw v0
.end method

.method private handleServiceWorker()V
    .locals 6

    .line 1639
    const-string v0, "source"

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1640
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1642
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 1643
    .local v2, "queryKeys":Ljava/util/Set;
    if-eqz v2, :cond_0

    const-string v3, "from_service_worker"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1644
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1645
    const-string v3, "^.*[.]alipay-eco[.](com|net)$"

    .line 1646
    .local v3, "urlPattern":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v5, "handleServiceWorker bingo, change url to cdn host"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    .end local v2    # "queryKeys":Ljava/util/Set;
    .end local v3    # "urlPattern":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1652
    :catchall_0
    move-exception v0

    .line 1653
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1657
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSocketTimeout(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V
    .locals 8
    .param p1, "h5HttpUrlRequest"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 1872
    const-string v0, "h5_socketTimeoutConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1873
    .local v0, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1874
    const-string v1, "enableConfig"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1875
    .local v1, "configSwitch":Ljava/lang/String;
    const-string v2, "YES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1876
    const/4 v2, 0x0

    const-string v3, "hostList"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1877
    .local v2, "hostList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1878
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1879
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 1880
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 1881
    .local v4, "host":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1882
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1883
    .local v6, "regex":Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1884
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setSocketTimeout(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1885
    goto :goto_1

    .line 1881
    .end local v6    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1889
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 1890
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setSocketTimeout(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1894
    .end local v1    # "configSwitch":Ljava/lang/String;
    .end local v2    # "hostList":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    :goto_2
    return-void
.end method

.method private handleSubResForSec()Z
    .locals 3

    .line 526
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->shouldInterceptSubResRequestForSec(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "\u8be5\u8d44\u6e90\u8bf7\u6c42\u5df2\u88ab\u7981\u6b62"

    const/16 v1, 0x243

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleSecureIntercept(Ljava/lang/String;I)V

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubResForSec url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    const/4 v0, 0x1

    return v0

    .line 533
    :cond_0
    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    .line 532
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "handleSubResForSec exception :"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private handlerInput(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8
    .param p1, "realStream"    # Ljava/io/InputStream;

    .line 989
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 990
    const-class v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    .line 991
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    .line 992
    .local v0, "h5GetAllResponse":Lcom/alipay/mobile/h5container/api/H5GetAllResponse;
    if-eqz v0, :cond_2

    .line 994
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "h5_stamper"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 995
    .local v1, "enableStamper":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h5_stamper is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    if-eqz v1, :cond_1

    .line 997
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 999
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_0
    new-array v3, v3, [B

    .line 1001
    .local v3, "buffer2":[B
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    .line 1002
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1006
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1007
    .local v4, "stream1":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1009
    .local v6, "stream2":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v7, v4}, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;->setData(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    return-object v6

    .line 1013
    .end local v3    # "buffer2":[B
    .end local v4    # "stream1":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "stream2":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1014
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "excetion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1017
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "h5GetAllResponse is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .end local v0    # "h5GetAllResponse":Lcom/alipay/mobile/h5container/api/H5GetAllResponse;
    .end local v1    # "enableStamper":Z
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handlerInputForEdgeRisk(Ljava/io/InputStream;Ljava/lang/String;ZLjava/util/List;)Ljava/io/InputStream;
    .locals 14
    .param p1, "realStream"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # Ljava/lang/String;
    .param p3, "gzip"    # Z
    .param p4, "contentType"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1028
    move-object v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1029
    return-object v2

    .line 1032
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v5, 0xa00000

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 1034
    return-object v2

    .line 1038
    :cond_1
    goto :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v10

    .line 1040
    .local v10, "isMainDoc":Z
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v3

    .line 1041
    .local v3, "isImage":Z
    const/4 v4, 0x0

    .line 1043
    .local v4, "charset":Ljava/lang/String;
    if-eqz p4, :cond_6

    :try_start_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1044
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1045
    .local v5, "contentTypeItem":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1046
    goto :goto_1

    .line 1048
    :cond_2
    if-nez v3, :cond_3

    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1049
    const/4 v3, 0x1

    .line 1051
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1052
    const-string v6, "charset="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1053
    .local v6, "indexOfCharset":I
    if-ltz v6, :cond_5

    .line 1054
    add-int/lit8 v7, v6, 0x8

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1055
    .local v7, "charsetSuffix":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1056
    .local v8, "indexOfSeparator":I
    if-ltz v8, :cond_4

    .line 1057
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v9

    goto :goto_2

    .line 1059
    :cond_4
    move-object v4, v7

    .line 1063
    .end local v5    # "contentTypeItem":Ljava/lang/String;
    .end local v6    # "indexOfCharset":I
    .end local v7    # "charsetSuffix":Ljava/lang/String;
    .end local v8    # "indexOfSeparator":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 1065
    :catch_1
    move-exception v0

    .line 1066
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v11, v3

    goto :goto_3

    .line 1067
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v11, v3

    .line 1068
    .end local v3    # "isImage":Z
    .local v11, "isImage":Z
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "UTF-8"

    goto :goto_4

    :cond_7
    move-object v0, v4

    :goto_4
    move-object v12, v0

    .line 1069
    .end local v4    # "charset":Ljava/lang/String;
    .local v12, "charset":Ljava/lang/String;
    if-nez v10, :cond_8

    if-nez v11, :cond_8

    .line 1070
    return-object v2

    .line 1072
    :cond_8
    const/4 v3, 0x0

    .line 1074
    .local v3, "realData":[B
    if-eqz p1, :cond_9

    .line 1075
    :try_start_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    move-object v13, v3

    goto :goto_6

    .line 1081
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1077
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1078
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1079
    nop

    .line 1081
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1079
    return-object v2

    .line 1081
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 1074
    :cond_9
    move-object v13, v3

    .line 1081
    .end local v3    # "realData":[B
    .local v13, "realData":[B
    :goto_6
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1082
    nop

    .line 1083
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isEnableExtensionForEdge()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1085
    if-eqz v10, :cond_b

    .line 1086
    if-eqz p3, :cond_a

    .line 1087
    :try_start_4
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    .line 1088
    invoke-static {v13}, Lcom/alipay/mobile/common/transport/utils/GzipUtils;->unGzip([B)[B

    move-result-object v5

    invoke-direct {v4, v5, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1087
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1090
    :cond_a
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1092
    :cond_b
    if-eqz v11, :cond_c

    .line 1093
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0, v3, v13}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 1095
    :catch_3
    move-exception v0

    .line 1096
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1097
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_7
    goto :goto_8

    .line 1099
    :cond_d
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/WebResourceResponseHandlePoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    .line 1100
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->extensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1101
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/WebResourceResponseHandlePoint;

    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    .line 1102
    move v6, v10

    move/from16 v7, p3

    move-object v8, v13

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/WebResourceResponseHandlePoint;->onHandleResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;ZZ[BLjava/lang/String;)V

    .line 1106
    :goto_8
    if-eqz v13, :cond_e

    .line 1107
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 1109
    :catch_4
    move-exception v0

    .line 1110
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    nop

    .line 1112
    :goto_9
    return-object v2
.end method

.method private initDatas()[B
    .locals 6

    .line 407
    iget-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDatas uploadDataMap size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v1, "uploadDataList":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 414
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "index":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->sysCopy(Ljava/util/List;)[B

    move-result-object v2

    return-object v2

    .line 408
    .end local v0    # "size":I
    .end local v1    # "uploadDataList":Ljava/util/List;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initRequestInputStream()Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;
    .locals 10

    .line 361
    iget-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 364
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    .local v0, "size":I
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V

    .line 366
    .local v1, "multiInputStream":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "inputItem":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 369
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 370
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->file2InputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 372
    :cond_1
    if-nez v3, :cond_2

    .line 374
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 375
    .local v5, "dataValue":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v6

    .line 376
    iget-wide v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    array-length v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v5    # "dataValue":[B
    goto :goto_1

    .line 377
    :catchall_0
    move-exception v5

    .line 378
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v7, "catch exception "

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 382
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->addInputStream(Ljava/io/InputStream;)V

    .line 366
    .end local v3    # "inputItem":Ljava/io/InputStream;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "index":I
    :cond_4
    return-object v1

    .line 362
    .end local v0    # "size":I
    .end local v1    # "multiInputStream":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private interceptInValidDomain()Z
    .locals 3

    .line 1663
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInterceptInvalidDomain:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    if-eqz v0, :cond_0

    .line 1666
    const/16 v1, 0x9

    const-string v2, "UnknownHostException"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 1667
    const/4 v0, 0x1

    return v0

    .line 1670
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private interceptSubResponse4Tiny(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)Z
    .locals 14
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 1792
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    .line 1794
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1795
    .local v0, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-nez v0, :cond_0

    .line 1796
    return v1

    .line 1799
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    .line 1800
    .local v3, "hasPermissionFile":Z
    if-eqz v3, :cond_8

    .line 1801
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1802
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_8

    .line 1803
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 1804
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v8, "validDomain"

    invoke-interface {v0, v5, v6, v8, v7}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v5

    .line 1805
    .local v5, "validDomain":Z
    if-eqz v5, :cond_1

    .line 1806
    return v1

    .line 1808
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->isAliDomains(Ljava/lang/String;)Z

    move-result v6

    .line 1809
    .local v6, "isAliDomains":Z
    if-eqz v6, :cond_2

    .line 1810
    return v1

    .line 1813
    :cond_2
    nop

    .line 1814
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toMultimap()Ljava/util/Map;

    move-result-object v7

    .line 1815
    .local v7, "responseHeaders":Ljava/util/Map;
    const/4 v8, 0x0

    .line 1816
    .local v8, "valueList":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1817
    .local v10, "key":Ljava/lang/String;
    const-string v11, "Content-Type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1818
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/util/List;

    .line 1819
    goto :goto_1

    .line 1821
    .end local v10    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 1822
    :cond_4
    :goto_1
    const/4 v9, 0x0

    .line 1823
    .local v9, "mimeType":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1824
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/lang/String;

    .line 1826
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1827
    return v1

    .line 1830
    :cond_6
    iget-object v10, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 1831
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v13, "Valid_SubResMimeList"

    invoke-interface {v0, v10, v11, v13, v12}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v10

    .line 1833
    .local v10, "validMimeType":Z
    iget-object v11, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mimeType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " validMimeType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    if-eqz v10, :cond_7

    .line 1836
    return v1

    .line 1838
    :cond_7
    return v2

    .line 1843
    .end local v0    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v3    # "hasPermissionFile":Z
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "validDomain":Z
    .end local v6    # "isAliDomains":Z
    .end local v7    # "responseHeaders":Ljava/util/Map;
    .end local v8    # "valueList":Ljava/util/List;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "validMimeType":Z
    :cond_8
    return v1
.end method

.method private isRedirect(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .line 1552
    const/16 v0, 0x133

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1559
    const/4 v0, 0x0

    return v0

    .line 1557
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSupportNetworkSupervisor()Z
    .locals 4

    .line 919
    const-string v0, "enableH5NetworkSupervisor"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 920
    .local v0, "enable":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isApk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSynchronous()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private modifyEmbedWebViewParam(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "startParam"    # Landroid/os/Bundle;

    .line 223
    const-string v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->enableModifyEmbedWebViewParam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v1, "modifyEmbedWebViewParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    .line 228
    const-string v0, "parentAppId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 229
    const-string v0, "parentVersion"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    .line 230
    const-string v0, "parentPackageNick"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->packageNick:Ljava/lang/String;

    .line 232
    :cond_0
    return-void
.end method

.method private monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "isSpdy"    # Ljava/lang/String;
    .param p6, "spdyRetry"    # Ljava/lang/String;
    .param p7, "useDomainConverge"    # Z

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 962
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "performance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 963
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    const-string v4, "appId"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 964
    const-string v3, "viewId"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "refViewId"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 965
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 966
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "targetUrl"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "method"

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 967
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "SPDY"

    move-object/from16 v5, p5

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 968
    const-string v3, "SPDYRetry"

    move-object/from16 v6, p6

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 969
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "errorCode"

    invoke-virtual {v2, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "errorDesc"

    move-object/from16 v7, p4

    invoke-virtual {v2, v3, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    .line 970
    const-string v8, "resLdcLevelId"

    invoke-virtual {v2, v8, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mLdcUserGroup:Ljava/lang/String;

    const-string v8, "ldcUserGroup"

    invoke-virtual {v2, v8, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 972
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenError:Z

    if-eqz v3, :cond_0

    .line 973
    iget-object v8, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNetPerformanceData:Ljava/util/Map;

    const/4 v10, 0x0

    iget-boolean v11, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z

    iget-wide v13, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J

    const-wide/16 v15, -0x1

    move/from16 v12, p3

    move/from16 v17, p7

    invoke-static/range {v8 .. v17}, Lcom/alipay/mobile/nebulauc/impl/network/NetInfoGenerator;->generateNetInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZIJJZ)Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, "netInfo":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string v9, "netinfo"

    invoke-virtual {v8, v9, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 978
    .end local v3    # "netInfo":Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_1

    .line 979
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v8, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 981
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 983
    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v8, "trigger abnormal log upload immediately."

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    sget-object v8, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_WEBAPP:Ljava/lang/String;

    invoke-interface {v3, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method private setProtocolToPageData(Ljava/lang/String;)V
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;

    .line 1528
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_0

    .line 1529
    return-void

    .line 1531
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->updateRequestCountByProtocal(Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1541
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setProtocol(Ljava/lang/String;)V

    goto :goto_0

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "h1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setProtocol(Ljava/lang/String;)V

    .line 1547
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 1548
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setLastResponseTimestamp(J)V

    .line 1549
    return-void
.end method

.method private setRequestMethod(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private setSocketTimeout(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "h5HttpUrlRequest"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .param p2, "configObj"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1897
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1898
    .local v0, "netWorkType":I
    const/4 v1, -0x1

    .line 1899
    .local v1, "timeOut":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1908
    :cond_0
    const-string v2, "wifi"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1902
    :cond_1
    const-string v2, "34g"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 1903
    goto :goto_0

    .line 1905
    :cond_2
    const-string v2, "2g"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 1906
    nop

    .line 1911
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1912
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTimeout(J)V

    .line 1914
    :cond_3
    return-void
.end method

.method private shouldInterceptIframe()Z
    .locals 6

    .line 479
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 480
    return v1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v3, "shouldInterceptIframe : "

    const-string v4, " "

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "isTinyApp"

    invoke-static {v0, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 483
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    const-string v0, "h5_shouldInterceptTinyWebviewIframe"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "yes"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->shouldInterceptIframeRequestInTiny(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    const/16 v0, 0x23c

    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleSecureIntercept(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    return v2

    .line 490
    :catchall_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return v1

    .line 496
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->shouldInterceptIframeRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    const/16 v0, 0x240

    :try_start_1
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleSecureIntercept(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    return v2

    .line 500
    :catchall_1
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    return v1
.end method

.method private subResUseHttpLinkInTinyApp()Z
    .locals 9

    .line 1848
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->tinyResUseSpdyInHttps(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    const/4 v0, 0x1

    return v0

    .line 1851
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1852
    .local v0, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1853
    return v1

    .line 1855
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    .line 1856
    .local v2, "hasPermissionFile":Z
    if-eqz v2, :cond_2

    .line 1857
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1858
    .local v3, "extend":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtension "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1861
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 1862
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v8, "HttpLink_SubResMimeList"

    invoke-interface {v0, v1, v4, v8, v5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    .line 1863
    .local v1, "result":Z
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " useHttp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    return v1

    .line 1867
    .end local v1    # "result":Z
    .end local v3    # "extend":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private sysCopy(Ljava/util/List;)[B
    .locals 7
    .param p1, "srcArrays"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "len":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 425
    .local v2, "srcArray":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 426
    .end local v2    # "srcArray":[B
    goto :goto_0

    .line 427
    :cond_0
    new-array v1, v0, [B

    .line 428
    .local v1, "destArray":[B
    const/4 v2, 0x0

    .line 429
    .local v2, "destLen":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 430
    .local v4, "srcArray":[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    array-length v5, v4

    add-int/2addr v2, v5

    .line 432
    .end local v4    # "srcArray":[B
    goto :goto_1

    .line 433
    :cond_1
    return-object v1
.end method


# virtual methods
.method public applyStartParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "startParam"    # Landroid/os/Bundle;

    .line 202
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    .line 203
    const-string v0, "publicId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->publicId:Ljava/lang/String;

    .line 204
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isAppChannel4(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    .line 207
    const-string v0, "release_type"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->releaseType:Ljava/lang/String;

    .line 208
    const-string v0, "appVersion"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    .line 209
    const-string v0, "package_nick"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->packageNick:Ljava/lang/String;

    .line 210
    const-string v0, "bizScenario"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bizScenario:Ljava/lang/String;

    .line 211
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "AlipayRequest"

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "AlipayRequest#Pre#"

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    .line 217
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->REQUEST_INDEX:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->REQUEST_INDEX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->modifyEmbedWebViewParam(Landroid/os/Bundle;)V

    .line 219
    return-void
.end method

.method public attachPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 235
    invoke-static {p1}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;

    .line 236
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 237
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    .line 238
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 239
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 240
    return-void
.end method

.method public cancel()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->cancelFuture()V

    .line 247
    return-void
.end method

.method complete()V
    .locals 3

    .line 313
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v2, "complete will notify"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 319
    :cond_0
    :goto_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getIsUCProxy()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isUcProxy:Z

    return v0
.end method

.method public getLoadtype()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->loadType:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    return v0
.end method

.method public getUCHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->ucHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileTotalLen()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .line 296
    return-void
.end method

.method public isCapture()Z
    .locals 1

    .line 1631
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->capture:Z

    return v0
.end method

.method public request(ZLjava/lang/String;Z)Z
    .locals 19
    .param p1, "useSpdy"    # Z
    .param p2, "spdyRetry"    # Ljava/lang/String;
    .param p3, "add478Header"    # Z

    .line 609
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->costTime:J

    .line 611
    if-eqz v2, :cond_0

    .line 612
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linkType SPDY_LINK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linkType HTTP_LINK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->matchMultimediaImageType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 619
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 620
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    if-eqz v0, :cond_1

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 622
    .local v5, "startTime":J
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    new-instance v8, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;

    invoke-direct {v8, v1, v3, v5, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/lang/String;J)V

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->getImageWithByte(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ResInputListen;)V

    .line 668
    .end local v5    # "startTime":J
    :cond_1
    return v4

    .line 671
    .end local v0    # "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isSynchronous()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " capture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->capture:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleServiceWorker()V

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->interceptInValidDomain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    return v4

    .line 680
    :cond_3
    move/from16 v5, p3

    invoke-direct {v1, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handle478Header(Z)V

    .line 682
    iget v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleCDNSafeguardHeader(Z)V

    .line 683
    iput-boolean v2, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->useSpdy:Z

    .line 684
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isHighPriority(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z

    .line 685
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 686
    .local v6, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->capture:Z

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setCapture(Z)V

    .line 687
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isUseHttp2(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setUseSystemH2(Z)V

    .line 688
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRadicalStrategy(Z)V

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->getBizLogInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setBizLog(Ljava/lang/String;)V

    .line 690
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    if-eqz v0, :cond_4

    const-string v0, "h5_getReferWithAppIdInResource"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "no"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->getReferWithAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRefer(Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRefer(Ljava/lang/String;)V

    .line 700
    :goto_1
    invoke-direct {v1, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleSocketTimeout(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V

    .line 703
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUploadLog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/alipay/mobile/h5container/api/H5Flag;->isUploadLog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->isUploadLog:Z

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setPrintUrlToMonitorLog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    goto :goto_2

    .line 705
    :catchall_0
    move-exception v0

    .line 706
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 710
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    const-string v7, "bizId"

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_5
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    if-eqz v0, :cond_6

    .line 713
    const-string v0, "h5_app_type"

    const-string v7, "mini_app"

    invoke-virtual {v6, v0, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_6
    invoke-direct {v1, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setRequestMethod(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V

    .line 718
    const-string v0, "linkType"

    if-eqz v2, :cond_7

    .line 719
    iput v4, v6, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 720
    const-string v7, "spdy"

    invoke-virtual {v6, v0, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p2

    goto :goto_3

    .line 722
    :cond_7
    const/4 v7, 0x2

    iput v7, v6, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 723
    const-string v7, "http"

    invoke-virtual {v6, v0, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "spdyRetry"

    move-object/from16 v7, p2

    invoke-virtual {v6, v0, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :goto_3
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 727
    .local v8, "key":Ljava/lang/String;
    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 728
    .local v9, "value":Ljava/lang/String;
    const-string v10, "Content-Length"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 729
    goto :goto_4

    .line 731
    :cond_8
    const/4 v10, 0x0

    .line 732
    .local v10, "needEncodeValue":Z
    iget-object v11, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 733
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    iget-object v12, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 734
    iget-object v12, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->jsonArrayEncodeHeader:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v12, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 735
    const/4 v10, 0x1

    .line 736
    goto :goto_6

    .line 733
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 741
    .end local v11    # "i":I
    :cond_a
    :goto_6
    if-eqz v10, :cond_b

    .line 742
    iget-object v11, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "use ZURLEncodedUtil encode request header "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {v9}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 746
    :cond_b
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 747
    .local v11, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v11, :cond_10

    .line 748
    const-string v12, "h5_enableDetectIfHasContent"

    invoke-interface {v11, v12}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "NO"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/2addr v12, v4

    .line 749
    .local v12, "enable":Z
    if-eqz v12, :cond_f

    .line 750
    const-string v13, "user-agent"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 751
    const-string v13, " ChannelId\\(([^)]*)\\)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 752
    .local v13, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 753
    .local v14, "matcher":Ljava/util/regex/Matcher;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 754
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 755
    .local v15, "tmp":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 756
    move-object/from16 v16, v0

    const/16 v0, 0xb

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v3

    .end local v3    # "type":Ljava/lang/String;
    .local v18, "type":Ljava/lang/String;
    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageId:I

    .line 757
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, ""

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    goto :goto_7

    .line 755
    .end local v0    # "value":Ljava/lang/String;
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    goto :goto_7

    .line 753
    .end local v15    # "tmp":Ljava/lang/String;
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .line 761
    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    :goto_7
    iget v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    if-nez v0, :cond_11

    .line 770
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5Page4Landing:Lcom/alipay/mobile/h5container/api/H5Page;

    goto :goto_8

    .line 750
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    goto :goto_8

    .line 749
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    goto :goto_8

    .line 747
    .end local v12    # "enable":Z
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .line 775
    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    :cond_11
    :goto_8
    invoke-virtual {v6, v8, v9}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request headers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "needEncodeValue":Z
    .end local v11    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object/from16 v0, v16

    move-object/from16 v3, v18

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 780
    .end local v18    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v3

    .end local v3    # "type":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    if-eqz v2, :cond_17

    .line 781
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "request extra headers su584publicid & su584userid & su584appid"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->publicId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 783
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->publicId:Ljava/lang/String;

    const-string v3, "su584publicid"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_13
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "userId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 790
    const-string v3, "su584userid"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_14
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 793
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    const-string v4, "su584appid"

    invoke-virtual {v6, v4, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_15
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->releaseType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 796
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->releaseType:Ljava/lang/String;

    const-string v4, "x-release-type"

    invoke-virtual {v6, v4, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_16
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bizScenario:Ljava/lang/String;

    const-string v4, "su584bizscenario"

    invoke-virtual {v6, v4, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .end local v0    # "userId":Ljava/lang/String;
    :cond_17
    if-eqz v2, :cond_18

    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    if-eqz v0, :cond_18

    .line 801
    const-string v0, "su584channelapplet"

    const-string v3, "Y"

    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->currentMainDocUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "su584appletpage"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appVersion:Ljava/lang/String;

    const-string v3, "su584appversion"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->packageNick:Ljava/lang/String;

    const-string v3, "su584tinyappversion"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->enableLdcLevel()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 808
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 809
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    const-string v3, "x-ldcid-level"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_19
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mLdcUserGroup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 812
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mLdcUserGroup:Ljava/lang/String;

    const-string v3, "x-user-group"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_1a
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->isPreConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 817
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->refreshPreConnect(Ljava/lang/String;)V

    .line 821
    :cond_1b
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setAsyncMonitorLog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 824
    goto :goto_9

    .line 822
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 823
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_9
    iget-wide v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileLength:J

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-lez v0, :cond_1d

    .line 827
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->uploadFileMap:Ljava/util/Map;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->initRequestInputStream()Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;

    move-result-object v3

    .line 829
    .local v3, "requestInputStream":Ljava/io/InputStream;
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 831
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInputStream dataLengthAvail "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", dataLengthCal "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 835
    goto :goto_a

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v8, "setInputStream available exception "

    invoke-static {v4, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 836
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    iget-wide v8, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->calculateDataLength:J

    invoke-virtual {v6, v8, v9}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setDataLength(J)V

    .line 837
    .end local v3    # "requestInputStream":Ljava/io/InputStream;
    goto :goto_b

    .line 838
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->initDatas()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setReqData([B)V

    .line 842
    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-eqz v0, :cond_1e

    .line 843
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 844
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_1e

    .line 845
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 846
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 847
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 848
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    const-string v8, "reqUrl"

    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->bugmeReqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "reqId"

    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    const-string v8, "method"

    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->devDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;

    const-string v9, "start"

    invoke-interface {v4, v9, v8, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 855
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1e
    const-class v0, Lcom/alipay/mobile/nebula/callback/H5RequestListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/callback/H5RequestListener;

    .line 856
    .local v0, "requestListener":Lcom/alipay/mobile/nebula/callback/H5RequestListener;
    if-eqz v0, :cond_1f

    .line 857
    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageUrl:Ljava/lang/String;

    iget-object v11, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    const/4 v13, 0x0

    move-object v8, v0

    invoke-interface/range {v8 .. v13}, Lcom/alipay/mobile/nebula/callback/H5RequestListener;->onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    .line 860
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isSupportNetworkSupervisor()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 861
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v4, "h5netsupervisor request begin"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 863
    .local v3, "start":J
    new-instance v8, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;-><init>()V

    .line 864
    .local v8, "suRequest":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;
    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;->setUrl(Ljava/lang/String;)V

    .line 865
    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->headers:Ljava/util/Map;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;->setHeaders(Ljava/util/Map;)V

    .line 866
    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;->setMethod(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getReqData()[B

    move-result-object v9

    .line 868
    .local v9, "reqData":[B
    if-nez v9, :cond_20

    .line 869
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 870
    .local v10, "inputStream":Ljava/io/InputStream;
    if-eqz v10, :cond_20

    .line 871
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v9

    .line 872
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 873
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v11}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 876
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_20
    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;->setBody([B)V

    .line 877
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->post(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;)V

    .line 878
    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "h5netsupervisor request end cost "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v3    # "start":J
    .end local v8    # "suRequest":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;
    .end local v9    # "reqData":[B
    :cond_21
    invoke-direct {v1, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->asyncRequest(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)V

    .line 881
    const/4 v3, 0x1

    return v3
.end method

.method sendRequest(ZLjava/lang/String;Z)Z
    .locals 4
    .param p1, "useSpdy"    # Z
    .param p2, "spdyRetry"    # Ljava/lang/String;
    .param p3, "add478Header"    # Z

    .line 446
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->alreadyRequest:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request already sent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return v1

    .line 450
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->alreadyRequest:Z

    .line 452
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->shouldInterceptIframe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    return v1

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleSubResForSec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    return v1

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResourceContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    return v1

    .line 464
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleFallbackRequest()V

    .line 467
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isTinyApp:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 468
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->subResUseHttpLinkInTinyApp()Z

    move-result v0

    xor-int/2addr v0, v1

    move p1, v0

    .line 471
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->tinyProcessUseSpdy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    const/4 p1, 0x0

    .line 475
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCapture(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .line 1635
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->capture:Z

    .line 1636
    return-void
.end method

.method public setCheckCrossOrigin(Z)V
    .locals 0
    .param p1, "check"    # Z

    .line 956
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->checkCrossOrigin:Z

    .line 957
    return-void
.end method

.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 268
    invoke-interface {p1, p0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    iget v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setResourceType(I)V

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v1, "pendingResponse != null, put response to EventHandler!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V

    .line 276
    :cond_0
    return-void
.end method

.method setNeedPendingResponse(Z)V
    .locals 0
    .param p1, "needPendingResponse"    # Z

    .line 442
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNeedPendingResponse:Z

    .line 443
    return-void
.end method

.method public setNetWorkManager(Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;)V
    .locals 0
    .param p1, "netWorkManager"    # Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    .line 952
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    .line 953
    return-void
.end method

.method public waitUntilComplete(I)V
    .locals 4
    .param p1, "timeout"    # I

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitUntilComplete timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->syncLock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    .line 306
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;

    const-string v3, "waitUntilComplete exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 310
    :cond_0
    :goto_1
    return-void
.end method
