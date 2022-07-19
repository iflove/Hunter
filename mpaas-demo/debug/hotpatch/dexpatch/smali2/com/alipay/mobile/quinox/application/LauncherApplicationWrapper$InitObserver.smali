.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;
.super Ljava/util/Observable;
.source "LauncherApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0

    .line 3245
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .param p2, "x1"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;

    .line 3245
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    return-void
.end method


# virtual methods
.method public setChanged()V
    .locals 0

    .line 3248
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 3249
    return-void
.end method
