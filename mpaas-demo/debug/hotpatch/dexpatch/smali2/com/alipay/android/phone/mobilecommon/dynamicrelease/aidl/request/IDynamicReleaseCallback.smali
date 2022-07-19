.class public interface abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;
.super Ljava/lang/Object;
.source "IDynamicReleaseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadCancelled(Ljava/lang/String;Z)V
.end method

.method public abstract onDownloadFailed(Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method public abstract onDownloadProgressUpdate(Ljava/lang/String;DZ)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onFinish(Z)V
.end method

.method public abstract onPostDownload(Ljava/lang/String;Z)V
.end method

.method public abstract onPreDownload(Ljava/lang/String;Z)V
.end method

.method public abstract onStart(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)V"
        }
    .end annotation
.end method
