.class final Lcom/alipay/mobile/framework/performance/SensitiveSceneManager$DefaultSensitiveScene;
.super Ljava/lang/Object;
.source "SensitiveSceneManager.java"

# interfaces
.implements Lcom/alipay/mobile/framework/performance/ISensitiveScene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/performance/SensitiveSceneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSensitiveScene"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/performance/SensitiveSceneManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/framework/performance/SensitiveSceneManager$1;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/framework/performance/SensitiveSceneManager$DefaultSensitiveScene;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSensitiveScene()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final sensitiveRun(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 69
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 70
    return-void
.end method

.method public final sensitiveRun(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 65
    return-void
.end method

.method public final sensitiveRunForHomeBanner(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 74
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 75
    return-void
.end method
