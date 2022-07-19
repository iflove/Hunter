.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;
.super Ljava/lang/Object;
.source "DynamicReleaseLauncher.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    .line 114
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->val$appkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance p3, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {p3, p2}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;)Lcom/alipay/mobile/common/transport/http/HttpManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-object v0
.end method


# virtual methods
.method public addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 0
    .param p1, "arg0"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 142
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->val$appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .line 132
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    .local v1, "mpaas_url":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rpc url= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DynamicRelease"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v1
.end method

.method public giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    .line 146
    return-void
.end method

.method public isCompress()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method
