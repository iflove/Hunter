.class public Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;
.super Ljava/lang/Object;
.source "InsideAppAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager$TinyAppAuthManagerInner;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager$TinyAppAuthManagerInner;->INSTANCE:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;

    return-object v0
.end method


# virtual methods
.method public getAuthCallback()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;

    return-object v0
.end method

.method public registerAuthCallback(Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->a:Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;

    .line 21
    return-void
.end method
