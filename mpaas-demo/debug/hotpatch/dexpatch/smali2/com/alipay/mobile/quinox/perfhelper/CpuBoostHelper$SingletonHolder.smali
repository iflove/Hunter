.class Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "CpuBoostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final sInstance:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;-><init>(Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$1;)V

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$SingletonHolder;->sInstance:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
