.class final Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler$1;
.super Ljava/lang/Object;
.source "NativeCrashHandler.java"

# interfaces
.implements Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrashApi()Lcom/uc/crashsdk/export/CrashApi;
    .locals 1

    .line 40
    # getter for: Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->access$000()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    return-object v0
.end method
