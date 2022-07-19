.class public interface abstract Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
.super Ljava/lang/Object;
.source "AnalysedRunnableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordListener"
.end annotation


# virtual methods
.method public abstract isTargetRecord(ILjava/lang/String;)Z
.end method

.method public abstract onEndRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
.end method

.method public abstract onStartRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
.end method
