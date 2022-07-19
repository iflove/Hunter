.class Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;
.super Ljava/lang/Object;
.source "ScheduleExtensionInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$t1:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iput-wide p3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$t1:J

    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iput-object p6, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$t1:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXKernel:ExtensionInvoker:Schedule"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

    iget-object v1, v0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;->proceed(Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
