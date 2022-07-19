.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver$1;
.super Ljava/lang/Object;
.source "RealTimeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;

    .line 48
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;->syncHotpatchConfig()V

    .line 51
    return-void
.end method
