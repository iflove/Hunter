.class public Lcom/alipay/mobile/framework/util/QuinoxModeUtils;
.super Ljava/lang/Object;
.source "QuinoxModeUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/alipay/mobile/framework/util/QuinoxModeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/util/QuinoxModeUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportSubThreadReceiver()Z
    .locals 3

    .line 16
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "androidx.localbroadcastmanager.content.LocalBroadcastManager.Callback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    sget-object v1, Lcom/alipay/mobile/framework/util/QuinoxModeUtils;->a:Ljava/lang/String;

    const-string/jumbo v2, "not support sub thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v0
.end method
