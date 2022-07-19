.class Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager$TinyAppAuthManagerInner;
.super Ljava/lang/Object;
.source "InsideAppAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TinyAppAuthManagerInner"
.end annotation


# static fields
.field public static INSTANCE:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager$TinyAppAuthManagerInner;->INSTANCE:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
