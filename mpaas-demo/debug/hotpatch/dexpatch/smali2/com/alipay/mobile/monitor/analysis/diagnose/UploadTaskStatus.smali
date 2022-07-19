.class public interface abstract Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
.super Ljava/lang/Object;
.source "UploadTaskStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    }
.end annotation


# static fields
.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final KEY_BIZ_TYPE:Ljava/lang/String; = "bizType"

.field public static final KEY_FROM_TIME:Ljava/lang/String; = "fromTime"

.field public static final KEY_NETWORK_CONDITION:Ljava/lang/String; = "networkCondition"

.field public static final KEY_TASK_TYPE:Ljava/lang/String; = "taskType"

.field public static final KEY_TO_TIME:Ljava/lang/String; = "toTime"

.field public static final KEY_ZIPPED_LEN_LIMIT:Ljava/lang/String; = "zippedLenLimit"

.field public static final NETWORK_ANY:Ljava/lang/String; = "any"

.field public static final NETWORK_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_WIFI:Ljava/lang/String; = "wifi"

.field public static final TYPE_ANRLOG:Ljava/lang/String; = "anrLog"

.field public static final TYPE_ANRTRACE:Ljava/lang/String; = "anrtrace"

.field public static final TYPE_APPLOG:Ljava/lang/String; = "applog"

.field public static final TYPE_LOGCAT:Ljava/lang/String; = "logcat"

.field public static final TYPE_RETRIEVE_FILE:Ljava/lang/String; = "retrieveFile"

.field public static final TYPE_STACKTRACER_PUSH:Ljava/lang/String; = "stacktracerPush"

.field public static final TYPE_STACKTRACER_WALLET:Ljava/lang/String; = "stacktracerWallet"

.field public static final TYPE_STORAGETRACE:Ljava/lang/String; = "storagetrace"

.field public static final TYPE_TRACEVIEW_PUSH:Ljava/lang/String; = "traceviewPush"

.field public static final TYPE_TRACEVIEW_Wallet:Ljava/lang/String; = "traceviewWallet"

.field public static final TYPE_TRAFFICLOG:Ljava/lang/String; = "trafficLog"


# virtual methods
.method public abstract onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
