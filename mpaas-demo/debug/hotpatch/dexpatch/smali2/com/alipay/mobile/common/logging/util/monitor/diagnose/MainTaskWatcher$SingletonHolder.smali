.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final a:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 119
    new-instance v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;->a:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    .locals 1

    .line 118
    sget-object v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;->a:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    return-object v0
.end method
