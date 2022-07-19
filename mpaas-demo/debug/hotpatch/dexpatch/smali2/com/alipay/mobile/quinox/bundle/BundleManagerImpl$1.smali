.class final Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$1;
.super Ljava/lang/Object;
.source "BundleManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/quinox/bundle/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/Bundle;)I
    .locals 3
    .param p0, "lhs"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p1, "rhs"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 175
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v0

    .line 176
    .local v0, "l":I
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v1

    .line 177
    .local v1, "r":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 172
    check-cast p1, Lcom/alipay/mobile/quinox/bundle/Bundle;

    check-cast p2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$1;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/Bundle;)I

    move-result p1

    return p1
.end method
