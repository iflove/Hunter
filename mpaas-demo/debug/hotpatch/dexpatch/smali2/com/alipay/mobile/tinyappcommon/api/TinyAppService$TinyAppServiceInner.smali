.class Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$TinyAppServiceInner;
.super Ljava/lang/Object;
.source "TinyAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TinyAppServiceInner"
.end annotation


# static fields
.field public static INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;-><init>(Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$1;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$TinyAppServiceInner;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
