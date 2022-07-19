.class Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge$TinyAppAuthBridgeInner;
.super Ljava/lang/Object;
.source "InsideAppAuthBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TinyAppAuthBridgeInner"
.end annotation


# static fields
.field private static final a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge$TinyAppAuthBridgeInner;->a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;
    .locals 1

    .line 28
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge$TinyAppAuthBridgeInner;->a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    return-object v0
.end method
