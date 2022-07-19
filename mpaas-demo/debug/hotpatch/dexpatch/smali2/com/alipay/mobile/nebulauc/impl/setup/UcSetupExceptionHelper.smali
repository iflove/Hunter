.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;
.super Ljava/lang/Object;
.source "UcSetupExceptionHelper.java"


# static fields
.field public static final ERROR_TYPE_FROM_ERROR:I = 0x7532

.field public static final ERROR_TYPE_FROM_INIT:I = 0x7533

.field public static final ERROR_TYPE_FROM_WARN:I = 0x7531

.field public static final H5_UC_INIT_FAIL_INFO:Ljava/lang/String; = "h5_uc_init_fail_info"

.field public static final H5_UC_RETRY_FLAG:Ljava/lang/String; = "h5_uc_retry_flag"

.field public static final TAG:Ljava/lang/String; = "UcSetupExceptionHelper"

.field public static errorCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isResultUpload:Z

.field public static isRetryInitUc:Z

.field public static lastErrorInfo:Ljava/lang/String;

.field public static setupKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ucErrorCode:Ljava/lang/String;

.field public static ucErrorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    .line 52
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    .line 59
    const-string v1, "1001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1002"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1006"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1008"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1009"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1010"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "1011"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2002"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2006"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "2008"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "3001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "3003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "3004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "3005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "3007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "4001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "4005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "4007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "4012"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "4016"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "6015"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "9004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "9101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string v1, "-99999"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    .line 98
    const-string v1, "OPTION_VIDEO_HARDWARE_ACCELERATED"

    const-string v2, "VIDEO_AC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    const-string v1, "OPTION_WEBVIEW_POLICY"

    const-string v2, "WEBVIEW_POLICY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    const-string v1, "OPTION_SETUP_THREAD_PRIORITY"

    const-string v2, "setup_priority"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containRetryCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "errStr"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    .end local v1    # "code":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getErrorCodeFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 130
    instance-of v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    check-cast v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    return-object v1
.end method

.method private static getExtraReportInfo()Ljava/lang/String;
    .locals 6

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^sdk_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "^manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^board="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "extraInfo":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 142
    .local v1, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 144
    .local v2, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "appId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "^appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .end local v2    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "appId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static inRightProcess()Z
    .locals 2

    .line 201
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 204
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->isAllLiteProcessHide()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 208
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    return v1
.end method

.method public static isRetryInitUc()Z
    .locals 8

    .line 179
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->inRightProcess()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UcSetupExceptionHelper"

    if-nez v0, :cond_0

    .line 180
    const-string v0, "not inRightProcess"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return v1

    .line 183
    :cond_0
    const-string v0, "h5_uc_init_fail_info"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "failStr":Ljava/lang/String;
    const-string v5, "h5_uc_retry_flag"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "retryFlag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 186
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    .line 192
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "retry"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetryInitUc : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v0

    .line 187
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failStr : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retryFlag : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v1
.end method

.method public static logUcInitException(Ljava/lang/Throwable;I)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "errorType"    # I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logUcInitException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcSetupExceptionHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "h5_log_uc_init_exception"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "errString":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getErrorCodeFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logUcInitException ucErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "H5_UC_INIT_EXCEPTION_DETAIL"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "isTinyApp"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "errorType"

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "ucVersion"

    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "isRetry"

    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    .line 117
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "errorCode"

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getExtraReportInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "ext0"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 120
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->saveUcErrorInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0    # "errString":Ljava/lang/String;
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "throwable : "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 107
    :cond_1
    :goto_1
    return-void
.end method

.method private static saveUcErrorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "errStr"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveUcErrorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcSetupExceptionHelper"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "h5_uc_init_retry"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "no"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const-string v0, "\\n\\t"

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "saveStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xc8

    if-le v4, v6, :cond_1

    .line 161
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->containRetryCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->containRetryCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 165
    return-void

    .line 167
    :cond_2
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    .line 168
    const-string v4, "h5_uc_init_fail_info"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    if-eqz v1, :cond_3

    .line 173
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->uploadUcRetryResult(Z)V

    .line 175
    :cond_3
    return-void

    .line 156
    .end local v0    # "saveStr":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method public static uploadUcRetryResult(Z)V
    .locals 4
    .param p0, "success"    # Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadUcRetryResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcSetupExceptionHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    .line 219
    const-string v0, "H5_UC_INIT_RETRY_RESULT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "isTinyApp"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "success"

    .line 221
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "errorCode"

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "ucErrorInfo"

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "lastErrorInfo"

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "throwable : "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
