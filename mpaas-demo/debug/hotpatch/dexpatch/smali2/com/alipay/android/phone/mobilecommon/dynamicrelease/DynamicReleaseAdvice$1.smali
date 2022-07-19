.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;
.super Ljava/lang/Object;
.source "DynamicReleaseAdvice.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;

.field final synthetic val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sceneParams:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;

    .line 125
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$targetAppId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$params:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$sceneParams:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 134
    return-void
.end method

.method public onFinish()V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$targetAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$params:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$sceneParams:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 139
    return-void
.end method

.method public onInstall()Z
    .locals 1

    .line 128
    const/4 v0, 0x1

    return v0
.end method
