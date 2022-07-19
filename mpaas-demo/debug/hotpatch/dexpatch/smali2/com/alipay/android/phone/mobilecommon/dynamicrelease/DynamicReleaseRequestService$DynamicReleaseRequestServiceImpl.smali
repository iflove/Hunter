.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;
.super Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester$Stub;
.source "DynamicReleaseRequestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicReleaseRequestServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    .line 193
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(I)Z
    .locals 1
    .param p1, "token"    # I

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->cancelDownload(I)Z

    move-result v0

    return v0
.end method

.method public handleAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 218
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 219
    const-string v0, "hotpatchUniqueId"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 220
    .local v5, "timeId":J
    move-wide v5, v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "MainToTools"

    const-string/jumbo v1, "tools"

    invoke-static {v0, v1, v5, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 223
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DynamicReleaseRequestService.handleAction(): action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.PROCESS_RESULT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a(Landroid/os/Bundle;)V
    invoke-static {v0, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V

    return-void

    .line 227
    :cond_1
    const-string v0, "action.dynamic.release.barcode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b(Landroid/os/Bundle;)V
    invoke-static {v0, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V

    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c(Landroid/os/Bundle;)V
    invoke-static {v0, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)I
    .locals 3
    .param p1, "requestData"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IDynamicReleaseRequester.request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    .local v0, "context":Landroid/content/Context;
    # operator++ for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$008()I

    .line 201
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$000()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->start(Landroid/os/Bundle;ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    .line 203
    if-eqz p2, :cond_0

    .line 204
    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$100()Ljava/util/Map;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$000()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->access$000()I

    move-result v1

    return v1
.end method
