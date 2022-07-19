.class public Lcom/alipay/euler/andfix/b/b;
.super Ljava/lang/Object;
.source "MethodReplaceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/euler/andfix/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/euler/andfix/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/alipay/euler/andfix/b/b;->b()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/euler/andfix/b/b$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/euler/andfix/b/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/euler/andfix/b/b;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/euler/andfix/b/b$a;->a:Lcom/alipay/euler/andfix/b/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 17
    new-instance v0, Lcom/alipay/euler/andfix/b/a;

    invoke-direct {v0}, Lcom/alipay/euler/andfix/b/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/b/b;->a:Lcom/alipay/euler/andfix/b/a;

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/euler/andfix/b/b;->a:Lcom/alipay/euler/andfix/b/a;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/alipay/euler/andfix/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_0
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string p2, "JAndFix not supported!"

    invoke-direct {p1, p2}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
