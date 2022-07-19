.class public Lcom/alipay/instantrun/compat/DexAOPHookUtil;
.super Ljava/lang/Object;
.source "DexAOPHookUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.DexAOPHookUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHookTargetFromChain(Lcom/alipay/dexaop/Chain;)Ljava/lang/reflect/Member;
    .locals 3
    .param p0, "chain"    # Lcom/alipay/dexaop/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/dexaop/Chain<",
            "**>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/alipay/dexaop/runtime/DexAOPHook;->getHookTargetFromChain(Lcom/alipay/dexaop/Chain;)Ljava/lang/reflect/Member;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IR.DexAOPHookUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSameMember(Ljava/lang/reflect/Member;Ljava/lang/reflect/Member;)Z
    .locals 3
    .param p0, "m1"    # Ljava/lang/reflect/Member;
    .param p1, "m2"    # Ljava/lang/reflect/Member;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/dexaop/runtime/DexAOPHook;->isSameMember(Ljava/lang/reflect/Member;Ljava/lang/reflect/Member;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IR.DexAOPHookUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z
    .locals 3
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .param p1, "chainInterceptor"    # Lcom/alipay/dexaop/ChainInterceptor;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/dexaop/runtime/DexAOPHook;->registerPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IR.DexAOPHookUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z
    .locals 3
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .param p1, "chainInterceptor"    # Lcom/alipay/dexaop/ChainInterceptor;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 52
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/dexaop/runtime/DexAOPHook;->unregisterPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IR.DexAOPHookUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
