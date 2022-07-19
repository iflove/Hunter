.class Lcom/alipay/euler/andfix/b/b$a;
.super Ljava/lang/Object;
.source "MethodReplaceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/euler/andfix/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/alipay/euler/andfix/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/alipay/euler/andfix/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/b/b;-><init>(Lcom/alipay/euler/andfix/b/b$1;)V

    sput-object v0, Lcom/alipay/euler/andfix/b/b$a;->a:Lcom/alipay/euler/andfix/b/b;

    return-void
.end method
