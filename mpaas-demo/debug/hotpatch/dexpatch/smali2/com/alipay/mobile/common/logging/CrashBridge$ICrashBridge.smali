.class public interface abstract Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;
.super Ljava/lang/Object;
.source "CrashBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/CrashBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICrashBridge"
.end annotation


# virtual methods
.method public abstract UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createExceptionHandler(Landroid/content/Context;)V
.end method

.method public abstract deleteFileByPath(Ljava/lang/String;)V
.end method

.method public abstract getCrashTime()J
.end method

.method public abstract getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public abstract getLastNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProcessAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initExceptionHandler(Landroid/content/Context;)V
.end method

.method public abstract isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isIgnoreCrash(Ljava/lang/String;)I
.end method

.method public abstract isKnownInvalidCrash(Ljava/lang/String;)Z
.end method

.method public abstract isPotentialBackgroundCrash(Ljava/lang/String;)Z
.end method

.method public abstract onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
.end method
