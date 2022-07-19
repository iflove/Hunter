.class public Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;
.super Ljava/lang/Object;
.source "H5CommonScreenshotListener.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenShot()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;-><init>(Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
