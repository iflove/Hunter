.class public Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
.super Ljava/lang/Object;
.source "H5ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

.field private e:Landroid/content/Context;

.field private final f:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "_data"

    const-string v1, "date_added"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a:[Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;-><init>(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->f:Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v1, "H5ScreenShotObserver"

    const-string v2, "registerContentObserver"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    return-object v0
.end method


# virtual methods
.method public registerListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public release()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "H5ScreenShotObserver"

    const-string v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->e:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public setCommonListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V
    .locals 0
    .param p1, "commonListener"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 101
    return-void
.end method
