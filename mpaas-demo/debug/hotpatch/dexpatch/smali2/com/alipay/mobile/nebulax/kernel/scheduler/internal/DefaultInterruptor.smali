.class public Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;
.super Ljava/lang/Object;
.source "DefaultInterruptor.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/scheduler/Interruptor;


# instance fields
.field private isInterrupted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 12
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return v0
.end method

.method public setInterrupted(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 20
    return-void
.end method
