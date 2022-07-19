.class Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$SingletonHolder;
.super Ljava/lang/Object;
.source "UniPerfProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final sInstance:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;-><init>(Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$1;)V

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$SingletonHolder;->sInstance:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
