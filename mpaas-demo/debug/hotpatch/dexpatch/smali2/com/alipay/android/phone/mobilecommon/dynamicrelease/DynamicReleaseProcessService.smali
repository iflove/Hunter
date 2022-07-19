.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;
.super Landroid/app/Service;
.source "DynamicReleaseProcessService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v0

    .line 78
    .local v0, "instance":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DynamicReleaseProcessService.onBind(intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicRelease"

    const-string v2, "DynamicReleaseProcessService.onCreate()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 33
    .local v3, "instance":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;
    move-object v3, v0

    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->registerDynamicReleaseProcessor(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;)V

    .line 37
    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v2

    .line 38
    .local v6, "clazz":Ljava/lang/Class;
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v7, v2

    .line 39
    .local v7, "constructor":Ljava/lang/reflect/Constructor;
    move-object v7, v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 40
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v5, v0

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;

    .line 41
    .local v2, "hotpatchProcessor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v8, "register hotpatchProcessor"

    invoke-interface {v5, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v5}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->registerDynamicReleaseProcessor(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v8, "no hotpatchProcessor"

    invoke-interface {v5, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v2    # "hotpatchProcessor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v2

    move-object v6, v2

    .line 48
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "no hotpatchProcessor "

    invoke-interface {v2, v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string v2, "com.alipay.android.phone.mobilesdk.cmd.CmdProcessor"

    const-string v5, "g"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v4, v0

    .line 52
    invoke-static {v2, v5, v7, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;

    move-object v2, v6

    .line 57
    .local v2, "cmdProcessor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "register cmdProcessor"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->registerDynamicReleaseProcessor(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;)V

    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "no cmdProcessor"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .end local v2    # "cmdProcessor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    return-void

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no cmdProcessor, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    .local v1, "instance":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->unregisterDynamicReleaseProcessor(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->unregisterDynamicReleaseProcessor(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->unregisterDynamicReleaseProcessor(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "DynamicRelease"

    const-string v3, "DynamicReleaseProcessService.onDestroy()"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 91
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DynamicReleaseProcessService.onUnbind(intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
