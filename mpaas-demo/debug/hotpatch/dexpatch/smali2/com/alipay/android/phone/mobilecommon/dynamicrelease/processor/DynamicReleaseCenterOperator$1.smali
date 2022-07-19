.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$1;
.super Ljava/lang/Object;
.source "DynamicReleaseCenterOperator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->processDynamicReleaseResult(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;

    .line 297
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)I
    .locals 2
    .param p0, "lhs"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p1, "rhs"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    .line 300
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v0

    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 297
    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    check-cast p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$1;->a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)I

    move-result p1

    return p1
.end method
