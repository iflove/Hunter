.class final Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;
.super Ljava/lang/Object;
.source "NetErrorLottieFile.java"

# interfaces
.implements Lcom/alipay/mobile/antui/excutor/FileLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->getNetErrorAnimation(Ljava/lang/String;ILcom/alipay/mobile/antui/lottie/LoadLottieCallback;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;->c:Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    iput-object p2, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;->a:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    iput p3, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUNetErrorView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final onFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileInfo"    # Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getInstance()Lcom/alipay/mobile/antui/lottie/LottieCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/antui/lottie/LottieCache;->putFileJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;->a:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    iget v2, p0, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile$1;->b:I

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;->onLottieLoadFinish(Lorg/json/JSONObject;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v0    # "object":Lorg/json/JSONObject;
    return-void

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    const-string v1, "AUNetErrorView"

    const-string v2, "String can not case to JSONObject"

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "e":Lorg/json/JSONException;
    return-void
.end method
