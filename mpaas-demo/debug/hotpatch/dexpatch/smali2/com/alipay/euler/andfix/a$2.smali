.class Lcom/alipay/euler/andfix/a$2;
.super Ljava/lang/ClassLoader;
.source "AndFixManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/euler/andfix/a;->a(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldalvik/system/DexFile;

.field final synthetic b:Lcom/alipay/euler/andfix/a;


# direct methods
.method constructor <init>(Lcom/alipay/euler/andfix/a;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/alipay/euler/andfix/a$2;->b:Lcom/alipay/euler/andfix/a;

    iput-object p3, p0, Lcom/alipay/euler/andfix/a$2;->a:Ldalvik/system/DexFile;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/alipay/euler/andfix/a$2;->a:Ldalvik/system/DexFile;

    invoke-virtual {p0}, Lcom/alipay/euler/andfix/a$2;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 440
    return-object v0

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
