.class Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;
.super Ljava/util/Observable;
.source "LauncherApplicationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/LauncherApplicationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitInitObservable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/LauncherApplicationAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$1;

    .line 510
    invoke-direct {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public setChanged()V
    .locals 0

    .line 513
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 514
    return-void
.end method
