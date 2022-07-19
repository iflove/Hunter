.class public Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;
.super Ljava/lang/Object;
.source "NetErrorLottieFile.java"


# static fields
.field public static final NET_ERROR_EMPTY_FILE_NAME:Ljava/lang/String; = "lottie_empty.json"

.field public static final NET_ERROR_EMPTY_SIMPLE_FILE_NAME:Ljava/lang/String; = "lottie_empty_lite.json"

.field private static final NET_ERROR_LOTTIE_FILES_ID:Ljava/lang/String; = "z6Ptk_4-QxCV-BLlxFPzUgAAACMAAQED"

.field private static final NET_ERROR_LOTTIE_FILES_MD5:Ljava/lang/String; = "bec14320f074b489b76ce8c8d05f5a5d"

.field public static final NET_ERROR_OVERFLOW_FILE_NAME:Ljava/lang/String; = "lottie_limit.json"

.field public static final NET_ERROR_SIGNAL_FILE_NAME:Ljava/lang/String; = "lottie_networkerror.json"

.field public static final NET_ERROR_WARNING_FILE_NAME:Ljava/lang/String; = "lottie_alert.json"

.field private static final SWITCH_CONFIG_KEY:Ljava/lang/String; = "AUNetError_LOTTIE_SWITCH"

.field private static final TAG:Ljava/lang/String; = "AUNetErrorView"

.field private static instance:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;


# instance fields
.field private fileLoadExecutor:Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

.field private isGetConfigSuccess:Z

.field private netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->isGetConfigSuccess:Z

    .line 53
    return-void
.end method

.method private getConfig()V
    .locals 7

    .line 146
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getConfigExecutor()Lcom/alipay/mobile/antui/excutor/ConfigExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    .local v1, "configExecutor":Lcom/alipay/mobile/antui/excutor/ConfigExecutor;
    move-object v1, v0

    const/16 v2, 0x15

    const-string v3, "AUNetErrorView"

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->isGetConfigSuccess:Z

    .line 149
    const-string v0, "AUNetError_LOTTIE_SWITCH"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/antui/excutor/ConfigExecutor;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "config":Ljava/lang/String;
    :try_start_0
    const-class v4, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    iput-object v4, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    .line 152
    if-eqz v4, :cond_0

    iget v4, v4, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->version:I

    if-nez v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    iput v2, v4, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->version:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    goto :goto_0

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception e = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "config":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "ConfigExecutor is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    .line 163
    iput v2, v0, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->version:I

    .line 165
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;
    .locals 2

    const-class v0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->instance:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;-><init>()V

    sput-object v1, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->instance:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    .line 47
    :cond_0
    sget-object v1, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->instance:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isFileExecutorInvalid()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->fileLoadExecutor:Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getFileLoadExecutor()Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->fileLoadExecutor:Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->fileLoadExecutor:Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNoLottie(Ljava/lang/String;)Z
    .locals 7
    .param p1, "lottieFileName"    # Ljava/lang/String;

    .line 109
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->isGetConfigSuccess:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->getConfig()V

    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    iget v1, v1, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->version:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    .line 114
    return v2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    iget-object v0, v0, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->types:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 118
    return v1

    .line 122
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v1, "lottie_alert.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "lottie_networkerror.json"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v1, "lottie_empty_lite.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "lottie_empty.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "lottie_limit.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    .line 137
    const-string v0, ""

    .local v0, "key":Ljava/lang/String;
    goto :goto_2

    .line 134
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    const-string v0, "alert"

    .line 135
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_2

    .line 131
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    const-string v0, "limit"

    .line 132
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    const-string v0, "empty"

    .line 129
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_2

    .line 124
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "networkerror"

    .line 125
    .restart local v0    # "key":Ljava/lang/String;
    nop

    .line 141
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->netErrorConfigModel:Lcom/alipay/mobile/antui/model/NetErrorConfigModel;

    iget-object v1, v1, Lcom/alipay/mobile/antui/model/NetErrorConfigModel;->types:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x67716c25 -> :sswitch_4
        -0x3e517a77 -> :sswitch_3
        -0x2ef202ea -> :sswitch_2
        0xd2e411c -> :sswitch_1
        0x7342b2da -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getNetErrorAnimation(Ljava/lang/String;ILcom/alipay/mobile/antui/lottie/LoadLottieCallback;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "callback"    # Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    const-string v0, "AUNetErrorView"

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->isNoLottie(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    return-object v2

    .line 60
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getInstance()Lcom/alipay/mobile/antui/lottie/LottieCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getFileJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    .line 62
    .local v3, "json":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->isFileExecutorInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    return-object v2

    .line 67
    :cond_1
    new-instance v0, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "request":Lcom/alipay/mobile/antui/excutor/FileLoadRequest;
    move-object v1, v0

    const-string/jumbo v4, "z6Ptk_4-QxCV-BLlxFPzUgAAACMAAQED"

    iput-object v4, v0, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->fileId:Ljava/lang/String;

    .line 69
    const-string v0, "bec14320f074b489b76ce8c8d05f5a5d"

    iput-object v0, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->fileMd5:Ljava/lang/String;

    .line 70
    iput-object p1, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->fileName:Ljava/lang/String;

    .line 71
    const-string v0, "LottieFiles.zip"

    iput-object v0, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->zipName:Ljava/lang/String;

    .line 72
    const-string v0, "lottie"

    iput-object v0, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->docPath:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->onlyWifi:Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->fileLoadExecutor:Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    new-instance v4, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;

    invoke-direct {v4, p0, p3, p2}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;-><init>(Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;I)V

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;->download(Lcom/alipay/mobile/antui/excutor/FileLoadRequest;Lcom/alipay/mobile/antui/excutor/FileLoadCallback;)V

    .line 95
    return-object v2

    .line 98
    .end local v1    # "request":Lcom/alipay/mobile/antui/excutor/FileLoadRequest;
    :cond_2
    :try_start_0
    const-string v1, "get lottie from cache"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 101
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "String can not case to JSONObject"

    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v2
.end method
