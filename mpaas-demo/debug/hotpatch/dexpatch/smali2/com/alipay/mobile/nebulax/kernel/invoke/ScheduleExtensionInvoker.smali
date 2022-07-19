.class public Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "ScheduleExtensionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker:Schedule"


# instance fields
.field private mExecutorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 21
    const-class p1, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;->mExecutorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    .line 22
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 9

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;->value()Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 29
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$3;->$SwitchMap$com$alipay$mobile$nebulax$kernel$annotation$ThreadType$Policy:[I

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "NebulaXKernel:ExtensionInvoker:Schedule"

    const/4 v5, 0x1

    if-eq v1, v5, :cond_6

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    goto :goto_3

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v6, 0x0

    if-lez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "com.alipay.mobile.nebulax"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 45
    :goto_2
    if-nez v5, :cond_4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " want to execute on URGENT_DISPLAY but not nebulax class!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->URGENT:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 50
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;->mExecutorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$2;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 34
    :cond_5
    new-instance v7, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "method "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cost "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
