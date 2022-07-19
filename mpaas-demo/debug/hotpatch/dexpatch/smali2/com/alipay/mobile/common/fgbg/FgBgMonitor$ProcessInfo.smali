.class public interface abstract Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
.super Ljava/lang/Object;
.source "FgBgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessInfo"
.end annotation


# virtual methods
.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getTopActivity()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
.end method
