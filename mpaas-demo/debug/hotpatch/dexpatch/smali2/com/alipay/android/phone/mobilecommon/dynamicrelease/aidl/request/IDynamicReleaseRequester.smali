.class public interface abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;
.super Ljava/lang/Object;
.source "IDynamicReleaseRequester.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel(I)Z
.end method

.method public abstract handleAction(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract request(Landroid/os/Bundle;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)I
.end method
