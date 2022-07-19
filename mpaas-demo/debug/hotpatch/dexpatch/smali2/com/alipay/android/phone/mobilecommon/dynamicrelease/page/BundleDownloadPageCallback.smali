.class public interface abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;
.super Ljava/lang/Object;
.source "BundleDownloadPageCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERR_DOWNLOAD_FAILED:I = 0x4

.field public static final ERR_INSTALL_FAILED:I = 0x5

.field public static final ERR_USER_BACK:I = 0x3

.field public static final ERR_USER_CANCEL:I = 0x2

.field public static final ERR_USER_SKIP:I = 0x1

.field public static final SUCCESS:I


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onInstall()Z
.end method
