.class public Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;
.super Ljava/lang/Object;
.source "TinyAppEdgeRiskServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;


# static fields
.field public static final a:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->a:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public checkBinaryRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "charset"    # Ljava/lang/String;

    .line 52
    const-string v0, "TinyAppEdgeRiskService"

    const-string v1, "checkBinaryRisk"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "checkBinaryRisk is not fired"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->checkBinaryRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V

    .line 58
    return-void
.end method

.method public checkBinaryRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "charset"    # Ljava/lang/String;

    .line 158
    const-string v0, "TinyAppEdgeRiskService"

    const-string v1, "checkBinaryRiskNow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "There is no implement for binary risk"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public checkImageRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B

    .line 42
    const-string v0, "TinyAppEdgeRiskService"

    const-string v1, "checkImageRisk"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "checkImageRisk is not fired"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V

    .line 48
    return-void
.end method

.method public checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    .locals 9
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B

    const-string v0, "appVersion"

    .line 110
    const-string v1, "TinyAppEdgeRiskService"

    const-string v2, "checkImageRisk"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isEdgeEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const-string v0, "checkImageRisk is not enable"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 117
    :cond_0
    if-eqz p3, :cond_4

    array-length v2, p3

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "really start checkImageRiskNow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 124
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    const-string/jumbo v5, "scenesId"

    const-string/jumbo v6, "tinyapp"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v2, "uid"

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "appId"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "contentLength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    array-length v0, p3

    int-to-long v5, v0

    const-wide/32 v7, 0x32000

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 130
    const-string/jumbo v0, "overflow data size"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "contentPictureData"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    const-string v0, "contentPictureUrl"

    invoke-virtual {v4, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "referUrl"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v4, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v0, "ua"

    const-string/jumbo v2, "picture_detect"

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;)V

    .line 149
    .local v0, "callback":Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;-><init>()V

    .line 150
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->setParam(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setCallback(Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->runOnMainProcess(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V

    .line 153
    .end local v0    # "callback":Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .end local v4    # "params":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 118
    :cond_4
    :goto_1
    const-string v0, "content is empty"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 32
    const-string v0, "TinyAppEdgeRiskService"

    const-string v1, "checkTextRisk"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string v1, "checkTextRisk is not fired"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    const-string v0, "appVersion"

    .line 62
    const-string v1, "TinyAppEdgeRiskService"

    const-string v2, "checkTextRiskNow"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isEdgeEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const-string v0, "checkTextRiskNow is not enable"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v0, "content is empty"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "really start checkTextRiskNow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 76
    .local v3, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const-string/jumbo v4, "scenesId"

    const-string/jumbo v5, "tinyapp"

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v2, "uid"

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "appId"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    .local v0, "contentData":[B
    const-string v2, "contentLength"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    array-length v2, v0

    int-to-long v4, v2

    const-wide/32 v6, 0x32000

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 83
    const-string/jumbo v2, "overflow data size"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "contentText"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    const-string/jumbo v2, "referUrl"

    invoke-virtual {v3, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v2, "ua"

    const-string/jumbo v4, "text_detect"

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;)V

    .line 101
    .local v2, "callback":Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;-><init>()V

    .line 102
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->setParam(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setCallback(Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->runOnMainProcess(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "contentData":[B
    .end local v2    # "callback":Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .end local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 8
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 164
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isEdgeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "appId":Ljava/lang/String;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    const/4 v3, 0x0

    .line 170
    .local v3, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 171
    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    return v1

    .line 176
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-gt v2, v4, :cond_2

    .line 177
    return v1

    .line 179
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getEdgeRate(Ljava/lang/String;)D

    move-result-wide v4

    .line 180
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
