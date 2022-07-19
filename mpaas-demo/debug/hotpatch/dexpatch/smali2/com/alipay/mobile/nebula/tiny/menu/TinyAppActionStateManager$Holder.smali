.class Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;
.super Ljava/lang/Object;
.source "TinyAppActionStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;-><init>(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$1;)V

    sput-object v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;->INSTANCE:Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;->INSTANCE:Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    return-object v0
.end method
