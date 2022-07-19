.class public interface abstract Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;
.super Ljava/lang/Object;
.source "DexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/dexpatch/patch/DexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V
.end method

.method public abstract onStart(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
.end method
