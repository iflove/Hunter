.class Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->onStart(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

.field final synthetic val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

.field final synthetic val$extensions:Ljava/util/List;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;JLjava/util/List;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    iput-wide p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$start:J

    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$extensions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " schedule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$start:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXKernel:ActionCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Start;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;->val$extensions:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Start;->onStart(Ljava/util/List;)V

    .line 37
    return-void
.end method
