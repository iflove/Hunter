.class Lcom/alipay/mobile/nebulax/engine/a/d/b$a;
.super Ljava/util/LinkedList;
.source "NXH5WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1951
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1948
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->a:I

    .line 1952
    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->a:I

    .line 1953
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1957
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 1958
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->a:I

    if-le v0, v1, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->removeFirst()Ljava/lang/Object;

    .line 1961
    :cond_0
    return p1
.end method
