.class public Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;
.super Ljava/lang/Object;
.source "LifecycleCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
    }
.end annotation


# static fields
.field private static instrumentCallback:Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

.field public static isFrameworkFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstrumentCallback()Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
    .locals 1

    .line 38
    sget-object v0, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->instrumentCallback:Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    return-object v0
.end method

.method public static setInstrumentCallback(Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    .line 31
    if-eqz p0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->instrumentCallback:Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sput-object p0, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->instrumentCallback:Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    .line 35
    return-void

    .line 32
    :cond_1
    :goto_0
    return-void
.end method
