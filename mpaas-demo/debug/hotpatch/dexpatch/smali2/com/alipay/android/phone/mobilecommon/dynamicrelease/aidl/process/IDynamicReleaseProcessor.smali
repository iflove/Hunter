.class public interface abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
.super Ljava/lang/Object;
.source "IDynamicReleaseProcessor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;
    }
.end annotation


# virtual methods
.method public abstract processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;"
        }
    .end annotation
.end method

.method public abstract processRpcLimit(J)V
.end method

.method public abstract unzip(Ljava/lang/String;Ljava/lang/String;)Z
.end method
