.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$2;
.super Ljava/lang/Object;
.source "NebulaCenterOperator.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcHeaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->getDefaultRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    .line 96
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$2;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRpcHeaderUpdateEvent(Lcom/alipay/mobile/common/rpc/RpcHeader;)V
    .locals 7
    .param p1, "rpcHeader"    # Lcom/alipay/mobile/common/rpc/RpcHeader;

    const-string v0, "DynamicRelease"

    .line 99
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/common/rpc/RpcHeader;->httpUrlHeader:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p1, Lcom/alipay/mobile/common/rpc/RpcHeader;->httpUrlHeader:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    const-string v2, "Server-Time"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 101
    .local v3, "e":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DynamicReleaseLauncher rpc time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$2;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "social_card_t"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v2, v1

    const-string v4, "ctoken"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string/jumbo v1, "ntoken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "e":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "var5":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v1    # "var5":Ljava/lang/Exception;
    return-void

    .line 114
    :cond_1
    :goto_0
    return-void
.end method
