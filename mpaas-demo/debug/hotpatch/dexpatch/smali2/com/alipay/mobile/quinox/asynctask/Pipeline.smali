.class public interface abstract Lcom/alipay/mobile/quinox/asynctask/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AsyTskExecutor"


# virtual methods
.method public abstract addIdleListener(Ljava/lang/Runnable;)V
.end method

.method public abstract addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
.end method

.method public abstract next()I
.end method

.method public abstract setExecutor(Ljava/util/concurrent/Executor;)V
.end method

.method public abstract start()I
.end method

.method public abstract stop()I
.end method
